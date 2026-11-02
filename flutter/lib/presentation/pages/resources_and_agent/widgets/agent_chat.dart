import 'package:enterprise_management/domain/aggregates/chat/chat_message.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:enterprise_management/presentation/pages/resources_and_agent/controllers/agent_chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AgentChat extends ConsumerStatefulWidget {
  const AgentChat({super.key});

  @override
  ConsumerState<AgentChat> createState() => _AgentChatState();
}

class _AgentChatState extends ConsumerState<AgentChat> {
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void _sendMessage([String? customText]) {
    final text = customText ?? _textController.text;
    if (text.trim().isEmpty) return;

    ref.read(agentChatControllerProvider.notifier).sendMessage(text);
    if (customText == null) {
      _textController.clear();
    }
    _scrollToBottom();
  }

  @override
  Widget build(BuildContext context) {
    final chatState = ref.watch(agentChatControllerProvider);

    // Auto-scroll when messages update
    ref.listen(agentChatControllerProvider, (previous, next) {
      if (previous?.messages.length != next.messages.length ||
          previous?.messages.lastOrNull?.text !=
              next.messages.lastOrNull?.text ||
          previous?.currentStatus != next.currentStatus) {
        _scrollToBottom();
      }
    });

    final showSuggestions =
        chatState.messages.length <= 1 && !chatState.isLoading;

    return Column(
      children: [
        Expanded(
          child: chatState.messages.isEmpty
              ? _buildEmptyState()
              : ListView.separated(
                  controller: _scrollController,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  itemCount: chatState.messages.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16),
                  itemBuilder: (context, index) {
                    final message = chatState.messages[index];
                    return _buildMessageBubble(message);
                  },
                ),
        ),

        //Quick Suggestions (if new chat)
        if (showSuggestions) _buildSuggestions(),

        //Input Bar
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(width: 1, color: Color(0xffC3C6D1))),
          ),
          child: Column(
            spacing: 8,
            children: [
              KeyboardListener(
                focusNode: FocusNode(),
                onKeyEvent: (KeyEvent event) {
                  if (event is KeyDownEvent &&
                      event.logicalKey == LogicalKeyboardKey.enter) {
                    final isShiftPressed =
                        HardwareKeyboard.instance.isShiftPressed;

                    if (isShiftPressed) {
                      final text = _textController.text;
                      final selection = _textController.selection;
                      final start = selection.start >= 0 ? selection.start : text.length;
                      final end = selection.end >= 0 ? selection.end : text.length;
                      final newText = text.replaceRange(start, end, '\n');
                      _textController.value = TextEditingValue(
                        text: newText,
                        selection: TextSelection.collapsed(offset: start + 1),
                      );
                    } else {
                      _sendMessage();
                    }
                  }
                },
                child: TextField(
                  controller: _textController,
                  focusNode: _focusNode,
                  maxLines: 4,
                  minLines: 1,
                  textInputAction: TextInputAction.none,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color(0xFFC3C6D1)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Color(0xFF003366),
                        width: 1.5,
                      ),
                    ),
                    hintText: 'Ask anything about your documents...',
                    hintStyle: const TextStyle(
                      fontSize: 13,
                      color: Color(0xFF74777F),
                    ),
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(left: 4, right: 4),
                      height: 24,
                      width: 24,
                      child: Assets.lib.infrastructure.assets.icons.attachment
                          .svg(
                            colorFilter: const ColorFilter.mode(
                              Color(0xFF74777F),
                              BlendMode.srcIn,
                            ),
                          ),
                    ),
                    suffixIcon: Container(
                      margin: const EdgeInsets.all(6),
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: chatState.isLoading
                            ? const Color(0xFF74777F)
                            : const Color(0xFF001E40),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: chatState.isLoading
                            ? null
                            : () => _sendMessage(),
                        icon: chatState.isLoading
                            ? const SizedBox(
                                width: 16,
                                height: 16,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.white,
                                ),
                              )
                            : Assets.lib.infrastructure.assets.icons.send.svg(
                                width: 18,
                                height: 18,
                                colorFilter: const ColorFilter.mode(
                                  Colors.white,
                                  BlendMode.srcIn,
                                ),
                              ),
                      ),
                    ),
                  ),
                ),
              ),
              const Text(
                'AI can make mistakes. Verify critical information.',
                style: TextStyle(fontSize: 11, color: Color(0xFF74777F)),
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Color(0xFFE5EEFF),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.smart_toy_outlined,
              size: 32,
              color: Color(0xFF003366),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'KB Semantic Search Agent',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF191C20),
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Ask anything based on the indexed documents.',
            style: TextStyle(fontSize: 13, color: Color(0xFF74777F)),
          ),
        ],
      ),
    );
  }

  Widget _buildSuggestions() {
    final suggestions = [
      'Summary of recent documents',
      'Department workflow',
      'Company policy',
    ];
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      alignment: Alignment.centerLeft,
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: suggestions.map((text) {
          return InkWell(
            onTap: () => _sendMessage(text),
            borderRadius: BorderRadius.circular(16),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0xFFF1F4F9),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFFD6E4FF)),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.search, size: 14, color: Color(0xFF003366)),
                  const SizedBox(width: 4),
                  Text(
                    text,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF003366),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildMessageBubble(ChatMessage message) {
    if (message.isUser) {
      return Align(
        alignment: Alignment.centerRight,
        child: Container(
          constraints: const BoxConstraints(maxWidth: 420),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: const BoxDecoration(
            color: Color(0xFF003366),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(4),
            ),
          ),
          child: SelectableText(
            message.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              height: 1.4,
            ),
          ),
        ),
      );
    }
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 2, right: 8),
            width: 28,
            height: 28,
            decoration: const BoxDecoration(
              color: Color(0xFF001E40),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.smart_toy_outlined,
              size: 16,
              color: Colors.white,
            ),
          ),
          Flexible(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 440),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                color: message.isError ?? false
                    ? const Color(0xFFFFEBEE)
                    : const Color(0xFFE5EEFF),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4),
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                border: message.isError ?? false
                    ? Border.all(color: Colors.redAccent.withValues(alpha: 0.5))
                    : null,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Status badge (if reasoning or retrieving)
                  if (message.status != null && message.status!.isNotEmpty) ...[
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.8),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xFFB0C4DE)),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(
                            width: 12,
                            height: 12,
                            child: CircularProgressIndicator(
                              strokeWidth: 1.5,
                              color: Color(0xFF003366),
                            ),
                          ),
                          const SizedBox(width: 6),
                          Flexible(
                            child: Text(
                              message.status!,
                              style: const TextStyle(
                                fontSize: 11,
                                fontStyle: FontStyle.italic,
                                color: Color(0xFF003366),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                  // Main Text Content
                  if (message.text.isNotEmpty)
                    SelectableText(
                      message.text,
                      style: TextStyle(
                        color: message.isError ?? false
                            ? const Color(0xFFB71C1C)
                            : const Color(0xFF0B1C30),
                        fontSize: 14,
                        height: 1.45,
                      ),
                    ),
                  // Streaming typing indicator
                  if ((message.isStreaming ?? false) &&
                      message.text.isEmpty &&
                      message.status == null)
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 14,
                            height: 14,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Color(0xFF003366),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Drafting response...',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF555555),
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
