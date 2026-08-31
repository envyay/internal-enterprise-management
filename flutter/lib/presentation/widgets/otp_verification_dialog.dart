import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import 'solid_button.dart';

class OtpVerificationDialog extends StatefulWidget {
  const OtpVerificationDialog({
    super.key,
    required this.email,
    required this.onVerify,
    this.onResend,
    this.length = 6,
  });

  final String email;
  final int length;
  final void Function(String pin) onVerify;
  final VoidCallback? onResend;

  @override
  State<OtpVerificationDialog> createState() => _OtpVerificationDialogState();
}

class _OtpVerificationDialogState extends State<OtpVerificationDialog> {
  final TextEditingController _pinController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _pinController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 1. Cấu hình Theme mặc định cho từng ô nhập mã Pin
    final defaultPinTheme = PinTheme(
      width: 52,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Color(0xff001E40),
      ),
      decoration: BoxDecoration(
        color: const Color(0xffF8F9FF),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xffC3C6D1)),
      ),
    );

    // 2. Theme khi ô đang được Focus
    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        border: Border.all(color: const Color(0xff001E40), width: 1.5),
        color: Colors.white,
      ),
    );

    // 3. Theme khi ô đã được điền ký tự
    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Colors.white,
        border: Border.all(color: const Color(0xff001E40).withAlpha(180)),
      ),
    );

    // 4. Theme khi có lỗi
    final errorPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        border: Border.all(color: Colors.redAccent),
      ),
    );

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: 440,
        padding: const EdgeInsets.all(28),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xffC3C6D1)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(20),
              blurRadius: 24,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Header & Nút đóng
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'OTP Verification',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff001E40),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, size: 20, color: Color(0xff43474F)),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Hướng dẫn
              Text(
                'Enter the ${widget.length}-digit verification code sent to:\n${widget.email}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xff43474F),
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 24),

              // Widget Pinput
              Pinput(
                length: widget.length,
                controller: _pinController,
                focusNode: _focusNode,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
                errorPinTheme: errorPinTheme,
                autofocus: true,
                validator: (value) {
                  if (value == null || value.length < widget.length) {
                    return 'Please enter all ${widget.length} digits';
                  }
                  return null;
                },
                onCompleted: (pin) {
                  widget.onVerify(pin);
                },
              ),
              const SizedBox(height: 24),

              // Nút xác nhận sử dụng SolidButton của dự án
              SolidButton(
                title: 'Verify & Continue',
                onTap: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    widget.onVerify(_pinController.text);
                  }
                },
              ),
              const SizedBox(height: 16),

              // Nút gửi lại mã
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Didn't receive the code? ",
                    style: TextStyle(fontSize: 13, color: Color(0xff43474F)),
                  ),
                  GestureDetector(
                    onTap: widget.onResend,
                    child: const Text(
                      'Resend',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff001E40),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Helper function để mở Dialog thuận tiện
Future<void> showOtpVerificationDialog({
  required BuildContext context,
  required String email,
  required void Function(String pin) onVerify,
  VoidCallback? onResend,
  int length = 6,
}) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => OtpVerificationDialog(
      email: email,
      length: length,
      onVerify: onVerify,
      onResend: onResend,
    ),
  );
}