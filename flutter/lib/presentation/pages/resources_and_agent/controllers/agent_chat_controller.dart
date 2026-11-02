import 'dart:convert';

import 'package:enterprise_management/application/use_cases/chats/chat_command.dart';
import 'package:enterprise_management/domain/aggregates/chat/chat_message.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'agent_chat_controller.g.dart';

@Riverpod()
class AgentChatController extends _$AgentChatController {
  static const _uuid = Uuid();

  @override
  ChatState build() {
    return ChatState(
      threadId: _uuid.v7(),
      messages: [
        ChatMessage(
          id: _uuid.v7(),
          text:
              'Hello! I am an intelligent document retrieval assistant (RAG). '
              'You can ask questions about documents, processes, departments, '
              'or tasks within the system.',
          isUser: false,
          timestamp: DateTime.now(),
        ),
      ],
    );
  }

  void resetChat() {
    state = ChatState(
      threadId: _uuid.v4(),
      messages: [
        ChatMessage(
          id: _uuid.v4(),
          text:
              'The conversation has been refreshed. '
              'Feel free to ask me a question!',
          isUser: false,
          timestamp: DateTime.now(),
        ),
      ],
    );
  }

  Future<void> sendMessage(String query) async {
    final trimmedQuery = query.trim();
    if (trimmedQuery.isEmpty || state.isLoading) return;

    final userMessage = ChatMessage(
      id: _uuid.v7(),
      text: trimmedQuery,
      isUser: true,
      timestamp: DateTime.now(),
    );

    final botMessageId = _uuid.v7();
    final botMessage = ChatMessage(
      id: botMessageId,
      text: '',
      isUser: false,
      timestamp: DateTime.now(),
      isStreaming: true,
      status: 'Receiving and analyzing the response...',
    );

    state = state.copyWith(
      messages: [...state.messages, userMessage, botMessage],
      isLoading: true,
      currentStatus: 'Receiving and analyzing the response...',
    );

    try {
      final mediator = ref.read(mediatorProvider);
      final res = await mediator.send(
        ChatCommand(
          query: trimmedQuery,
          threadId: state.threadId ?? _uuid.v7(),
        ),
      );

      switch (res) {
        case Success<Stream>(data: final stream):
          final lineStream = stream
              .cast<List<int>>()
              .transform(utf8.decoder)
              .transform(const LineSplitter());

          var accumulatedText = '';
          var activeThreadId = state.threadId;

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
                final newThreadId = payload['thread_id'] as String?;
                if (newThreadId != null && newThreadId.isNotEmpty) {
                  activeThreadId = newThreadId;
                }
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
          state = state.copyWith(
            threadId: activeThreadId,
            isLoading: false,
            currentStatus: null,
          );

        case Failure<Stream>(failure: final failure):
          _updateBotMessage(
            botMessageId,
            text: 'Unable to connect to the service: ${failure.toString()}',
            isStreaming: false,
            status: null,
          );
          state = state.copyWith(isLoading: false, currentStatus: null);
      }
    } catch (e) {
      _updateBotMessage(
        botMessageId,
        text: 'An error occurred: $e',
        isStreaming: false,
        isError: true,
        status: null,
      );
      state = state.copyWith(isLoading: false, currentStatus: null);
    }
  }

  void _updateBotMessage(
    String id, {
    String? text,
    String? status,
    bool? isStreaming,
    bool? isError,
  }) {
    final updatedMessages = state.messages.map((m) {
      if (m.id == id) {
        return m.copyWith(
          text: text ?? m.text,
          status: status,
          isStreaming: isStreaming ?? m.isStreaming,
          isError: isError ?? m.isError,
        );
      }
      return m;
    }).toList();
    state = state.copyWith(messages: updatedMessages, currentStatus: status);
  }
}
