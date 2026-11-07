import 'dart:convert';

import 'package:enterprise_management/application/use_cases/chats/chat/chat_command.dart';
import 'package:enterprise_management/application/use_cases/chats/create_chat_message/create_chat_message_command.dart';
import 'package:enterprise_management/application/use_cases/chats/create_conversation/create_conversation_command.dart';
import 'package:enterprise_management/application/use_cases/chats/get_chat_messages_by_conversation/get_chat_messages_by_conversation_query.dart';
import 'package:enterprise_management/domain/aggregates/chat/chat_message.dart';
import 'package:enterprise_management/domain/aggregates/conversation/conversation.dart';
import 'package:enterprise_management/presentation/pages/resources_and_agent/controllers/chat_sessions_controller.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'agent_chat_controller.g.dart';

@Riverpod()
class AgentChatController extends _$AgentChatController {
  static const _uuid = Uuid();
  bool _isPersisted = false;

  @override
  Conversation build() {
    _isPersisted = false;
    final conversationId = _uuid.v7();
    return Conversation(
      id: conversationId,
      userId: '',
      title: 'New Chat',
      chatMessage: [
        ChatMessage(
          id: _uuid.v7(),
          conversationId: conversationId,
          content:
              'Hello! I am an intelligent document retrieval assistant (RAG). '
              'You can ask questions about documents, processes, departments, '
              'or tasks within the system.',
          isUser: false,
        ),
      ],
    );
  }

  void resetChat() {
    _isPersisted = false;
    final newConversationId = _uuid.v7();
    state = Conversation(
      id: newConversationId,
      userId: '',
      title: 'New Chat',
      chatMessage: [
        ChatMessage(
          id: _uuid.v7(),
          conversationId: newConversationId,
          content:
              'The conversation has been refreshed. '
              'Feel free to ask me a question!',
          isUser: false,
        ),
      ],
    );
  }

  Future<void> loadConversation(Conversation conversation) async {
    _isPersisted = true;
    state = conversation;

    final mediator = ref.read(mediatorProvider);
    final res = await mediator.query(
      GetChatMessagesByConversationQuery(conversationId: conversation.id),
    );

    if (res is Success<List<ChatMessage>>) {
      state = state.copyWith(chatMessage: res.data);
    }
  }

  void loadSession(Conversation conversation) => loadConversation(conversation);

  Future<void> sendMessage(String query) async {
    final trimmedQuery = query.trim();
    final messages = state.chatMessage ?? [];
    final isLoading = messages.any((m) => m.isStreaming ?? false);
    if (trimmedQuery.isEmpty || isLoading) return;

    var conversationId = state.id;

    final userMessage = ChatMessage(
      id: _uuid.v7(),
      conversationId: conversationId,
      content: trimmedQuery,
      isUser: true,
    );

    final botMessageId = _uuid.v7();
    final botMessage = ChatMessage(
      id: botMessageId,
      conversationId: conversationId,
      content: '',
      isUser: false,
      isStreaming: true,
      status: 'Receiving and analyzing the response...',
    );

    state = state.copyWith(
      chatMessage: [...messages, userMessage, botMessage],
    );

    final mediator = ref.read(mediatorProvider);

    // Flow: If it's the first query in this conversation, create conversation + create chat message
    if (!_isPersisted) {
      final createConvRes = await mediator.send(
        CreateConversationCommand(
          query: trimmedQuery,
          id: conversationId,
        ),
      );

      if (createConvRes is Success<Conversation>) {
        final createdConv = createConvRes.data;
        _isPersisted = true;
        conversationId = createdConv.id;
        state = state.copyWith(
          id: createdConv.id,
          title: createdConv.title,
        );
        ref.read(chatSessionsProvider.notifier).refresh();
      }

      await mediator.send(
        CreateChatMessageCommand(
          content: trimmedQuery,
          isUser: true,
          conversationId: conversationId,
        ),
      );
    } else {
      await mediator.send(
        CreateChatMessageCommand(
          content: trimmedQuery,
          isUser: true,
          conversationId: conversationId,
        ),
      );
    }

    try {
      final res = await mediator.send(
        ChatCommand(
          query: trimmedQuery,
          threadId: conversationId,
        ),
      );

      switch (res) {
        case Success<Stream>(data: final stream):
          final lineStream = stream
              .cast<List<int>>()
              .transform(utf8.decoder)
              .transform(const LineSplitter());

          var accumulatedText = '';

          await for (final line in lineStream) {
            final trimmedLine = line.trim();
            if (trimmedLine.isEmpty || !trimmedLine.startsWith('data:')) continue;

            final jsonStr = trimmedLine.substring(5).trim();
            if (jsonStr.isEmpty) continue;

            try {
              final payload = jsonDecode(jsonStr) as Map<String, dynamic>;
              final type = payload['type'] as String?;

              if (type == 'status') {
                final statusContent = payload['content'] as String? ?? '';
                _updateBotMessage(botMessageId, status: statusContent);
              } else if (type == 'token') {
                final token = payload['content'] as String? ?? '';
                accumulatedText += token;
                _updateBotMessage(botMessageId, text: accumulatedText, status: null);
              } else if (type == 'done') {
                _updateBotMessage(
                  botMessageId,
                  text: accumulatedText.isNotEmpty
                      ? accumulatedText
                      : 'No relevant information available.',
                  isStreaming: false,
                  status: null,
                );
              } else if (type == 'error') {
                final errorMsg =
                    payload['content'] as String? ??
                    'An error occurred while generating the response.';
                accumulatedText += '\n[Error: $errorMsg]';
                _updateBotMessage(
                  botMessageId,
                  text: accumulatedText,
                  isStreaming: false,
                  isError: true,
                  status: null,
                );
              }
            } catch (_) {
              // Ignore non-json or malformed chunks
            }
          }
          // Ensure streaming flag is cleared when stream ends
          _updateBotMessage(botMessageId, isStreaming: false, status: null);

          // Save bot's response to database so it can be reloaded later
          if (accumulatedText.isNotEmpty) {
            await mediator.send(
              CreateChatMessageCommand(
                content: accumulatedText,
                isUser: false,
                conversationId: conversationId,
              ),
            );
          }

        case Failure<Stream>(failure: final failure):
          _updateBotMessage(
            botMessageId,
            text: 'Unable to connect to the service: ${failure.toString()}',
            isStreaming: false,
            status: null,
          );
      }
    } catch (e) {
      _updateBotMessage(
        botMessageId,
        text: 'An error occurred: $e',
        isStreaming: false,
        isError: true,
        status: null,
      );
    }
  }

  void _updateBotMessage(
    String id, {
    String? text,
    String? status,
    bool? isStreaming,
    bool? isError,
  }) {
    final currentMessages = state.chatMessage ?? [];
    final updatedMessages = currentMessages.map((m) {
      if (m.id == id) {
        return m.copyWith(
          content: text ?? m.content,
          status: status,
          isStreaming: isStreaming ?? m.isStreaming,
          isError: isError ?? m.isError,
        );
      }
      return m;
    }).toList();
    state = state.copyWith(chatMessage: updatedMessages);
  }
}
