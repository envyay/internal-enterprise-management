import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:enterprise_management/presentation/forms/inputs/email_input.dart';
import 'package:enterprise_management/presentation/pages/authencation/controllers/authentication_controller.dart';
import 'package:enterprise_management/presentation/pages/authencation/controllers/sign_in_form_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../infrastructure/assets/gen/assets.gen.dart';
import '../../widgets/otp_verification_dialog.dart';
import '../../widgets/outline_icon_button.dart';
import '../../widgets/solid_button.dart';

@RoutePage()
class AuthenticationPage extends ConsumerWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(authenticationControllerProvider.notifier);

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
                        child: Assets.lib.infrastructure.assets.icons.logo.svg(
                          width: 32,
                          height: 32,
                        ),
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
                      Consumer(
                        builder: (context, ref, child) {
                          final form = ref.watch(signInFormControllerProvider.notifier);
                          final state = ref.watch(signInFormControllerProvider);
                          final error = state.email.error?.errorMessage;
                          final email = state.email.value;
                          return Column(
                            children: [
                              TextField(
                                onChanged: (value) {
                                  form.setEmail(value);
                                },
                                decoration: InputDecoration(
                                  label: Text('Work Email'),
                                  border: OutlineInputBorder(),
                                  errorText: error,
                                  prefixIcon: Container(
                                    padding: .only(left: 18, right: 12),
                                    child: Assets.lib.infrastructure.assets.icons.email.svg(height: 16, width: 16),
                                  ),
                                ),
                              ),
                              SolidButton(
                                title: 'Login',
                                margin: const EdgeInsets.only(bottom: 16, top: 20),
                                onTap: () {
                                  if (!state.isValid) return;

                                  controller.login(email);
                                  showOtpVerificationDialog(
                                    context: context,
                                    email: email,
                                    length: 6,
                                    onVerify: (otp) {
                                      controller.loginVerify(email, otp);
                                      context.router.pop();
                                    },
                                    onResend: () {
                                      print('Resending OTP...');
                                    },
                                  );
                                },
                              ),
                            ],
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
