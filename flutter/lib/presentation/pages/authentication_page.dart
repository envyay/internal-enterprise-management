import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../infrastructure/assets/gen/assets.gen.dart';
import '../widgets/otp_verification_dialog.dart';
import '../widgets/outline_icon_button.dart';
import '../widgets/solid_button.dart';

@RoutePage()
class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffF8F9FF),
        alignment: .center,
        child: Stack(
          children: [
            Positioned(
              bottom: -102,
              left: -64,
              child: Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffC0C1FF).withAlpha(102),
                      blurRadius: 80,
                    ),
                  ],
                  borderRadius: .all(.circular(12)),
                ),
              ),
            ),
            Positioned(
              top: -102,
              right: -64,
              child: Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffC0C1FF).withAlpha(102),
                      blurRadius: 80,
                    ),
                  ],
                  borderRadius: .all(.circular(12)),
                ),
              ),
            ),

            Align(
              child: Container(
                width: 420,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: .all(.circular(8)),
                  border: .all(color: Color(0xffC3C6D1)),
                ),
                padding: .all(33),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: .min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xff001E40),
                          borderRadius: .all(.circular(8)),
                        ),
                        margin: .only(bottom: 20),
                        padding: .all(12),
                        child: Assets.lib.infrastructure.assets.icons.logo.svg(width: 32, height: 32),
                      ),
                      Text(
                        "Enterprise Management",
                        style: TextStyle(
                          color: Color(0xff001E40),
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        margin: .only(bottom: 32),
                        child: Text(
                          "Secure, passwordless access to your enterprise workspace.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff43474F),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          label: Text('Work Email'),
                          border: OutlineInputBorder(),
                          prefixIcon: Container(
                            padding: .only(left: 18, right: 12),
                            child: Assets.lib.infrastructure.assets.icons.email.svg(
                              height: 16,
                              width: 16,
                            ),
                          ),
                        ),
                      ),
                      SolidButton(
                        title: 'Login',
                        margin: const EdgeInsets.only(bottom: 16, top: 20),
                        onTap: () {
                          showOtpVerificationDialog(
                            context: context,
                            email: 'user@example.com',
                            length: 6, // Hoặc 4 tùy backend
                            onVerify: (pin) {
                              // Xử lý xác thực mã PIN với API
                              print('Entered OTP: $pin');
                              Navigator.of(context).pop(); // Đóng dialog sau khi thành công
                            },
                            onResend: () {
                              // Gửi lại mã OTP
                              print('Resending OTP...');
                            },
                          );
                        },
                      ),
                      Container(
                        margin: .symmetric(vertical: 32),
                        child: Row(
                          spacing: 16,
                          children: [
                            _buildLine(),
                            Text(
                              'OR CONTINUE WITH',
                              style: TextStyle(fontSize: 12),
                            ),
                            _buildLine(),
                          ],
                        ),
                      ),
                      OutlineIconButton(
                        margin: .only(bottom: 12),
                        title: 'Google',
                        prefix: Assets.lib.infrastructure.assets.icons.website,
                        onTap: () {
                          /// TODO: Login by google ///
                          print('google');
                        },
                      ),
                      OutlineIconButton(
                        margin: .only(bottom: 12),
                        title: 'Microsoft SharePoint',
                        prefix: Assets.lib.infrastructure.assets.icons.window,
                        onTap: () {
                          /// TODO: Login by microsoft sharepoint ///
                          print('microsoft');
                        },
                      ),
                      Container(
                        margin: .only(top: 16),
                        child: Text(
                          "Need help? Contact IT Support",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLine() {
    return Expanded(
      child: Container(
        height: 1,
        decoration: BoxDecoration(color: Color(0xffD9D9D9)),
      ),
    );
  }
}
