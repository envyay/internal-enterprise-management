import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpVerificationDialog extends StatefulWidget {
  final String phoneNumber;
  final VoidCallback? onClose;
  final ValueChanged<String>? onConfirm;

  const OtpVerificationDialog({
    super.key,
    this.phoneNumber = '93****261',
    this.onClose,
    this.onConfirm,
  });

  @override
  State<OtpVerificationDialog> createState() => _OtpVerificationDialogState();
}

class _OtpVerificationDialogState extends State<OtpVerificationDialog> {
  static const int _otpLength = 6;
  late final List<TextEditingController> _controllers;
  late final List<FocusNode> _focusNodes;

  int _countdown = 58;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(_otpLength, (_) => TextEditingController());
    _focusNodes = List.generate(_otpLength, (_) => FocusNode());

    // Tự động focus vào ô đầu tiên khi mở popup
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNodes[0].requestFocus();
    });

    _startCountdown();
  }

  void _startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_countdown > 0) {
        setState(() => _countdown--);
      } else {
        _timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    for (var c in _controllers) {
      c.dispose();
    }
    for (var f in _focusNodes) {
      f.dispose();
    }
    super.dispose();
  }

  String get _otpCode => _controllers.map((c) => c.text).join();

  @override
  Widget build(BuildContext context) {
    final bool isCompleted = _otpCode.length == _otpLength;

    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          width: 420,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 24,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Tiêu đề + Nút đóng X
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    child: Text(
                      'Xác minh bằng số điện thoại',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff1D2939),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: widget.onClose ?? () => Navigator.of(context).maybePop(),
                    borderRadius: BorderRadius.circular(20),
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(Icons.close, size: 20, color: Color(0xff667085)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),

              // 2. Dòng mô tả số điện thoại
              Text(
                'Hãy xem tin nhắn văn bản chúng tôi đã gửi tới ${widget.phoneNumber}.',
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xff667085),
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 24),

              // 3. 6 Ô nhập mã OTP
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(_otpLength, (index) => _buildOtpBox(index)),
              ),
              const SizedBox(height: 20),

              // 4. Dòng trợ giúp & Đếm ngược gửi lại
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      // Xử lý khi không thể xác minh
                    },
                    child: const Text(
                      'Bạn không thể xác minh?',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff475467),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    _countdown > 0 ? 'Gửi lại (${_countdown}s)' : 'Gửi lại',
                    style: TextStyle(
                      fontSize: 13,
                      color: _countdown > 0 ? const Color(0xff98A2B3) : const Color(0xff001E40),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 28),

              // 5. Nút Xác nhận
              Align(
                alignment: Alignment.centerRight,
                child: FilledButton(
                  onPressed: isCompleted
                      ? () => widget.onConfirm?.call(_otpCode)
                      : null,
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xff001E40),
                    disabledBackgroundColor: const Color(0xffF2F4F7),
                    foregroundColor: Colors.white,
                    disabledForegroundColor: const Color(0xff98A2B3),
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Xác nhận',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOtpBox(int index) {
    return SizedBox(
      width: 48,
      height: 52,
      child: TextField(
        controller: _controllers[index],
        focusNode: _focusNodes[index],
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color(0xff1D2939),
        ),
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: InputDecoration(
          counterText: '',
          filled: true,
          fillColor: _focusNodes[index].hasFocus ? Colors.white : const Color(0xffF2F4F7),
          contentPadding: EdgeInsets.zero,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: _controllers[index].text.isNotEmpty
                  ? const Color(0xff1D2939)
                  : Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xff1D2939), width: 1.5),
          ),
        ),
        onChanged: (value) {
          if (value.isNotEmpty && index < _otpLength - 1) {
            _focusNodes[index + 1].requestFocus();
          } else if (value.isEmpty && index > 0) {
            _focusNodes[index - 1].requestFocus();
          }
          setState(() {});
        },
      ),
    );
  }
}