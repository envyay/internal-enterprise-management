import 'package:auto_route/auto_route.dart';
import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/pages/user/controllers/edit_user_form_controller.dart';
import 'package:enterprise_management/presentation/widgets/solid_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditUserDialog extends ConsumerWidget {
  const EditUserDialog({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(editUserFormControllerProvider(user).notifier);
    final state = ref.watch(editUserFormControllerProvider(user));
    final error = state.fullName.error?.errorMessage;
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffF8F9FF),
                border: const Border(
                  bottom: BorderSide(width: 1, color: Color(0xffC3C6D1)),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Edit User',
                    style: TextStyle(
                      color: Color(0xff0B1C30),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.router.pop();
                    },
                    child: Container(
                      child: Assets.lib.infrastructure.assets.icons.close.svg(
                        width: 16,
                        height: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextFormField(
                    initialValue: state.fullName.value,
                    onChanged: (value) {
                      controller.setFullName(value);
                    },
                    decoration: InputDecoration(
                      label: const Text('Name'),
                      errorText: error,
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    initialValue: state.email.value,
                    onChanged: (value) {
                      controller.setEmail(value);
                    },
                    decoration: const InputDecoration(
                      label: Text('Email'),
                    ),
                  ),
                  const SizedBox(height: 12),
                  DropdownButtonFormField<int>(
                    value: state.userStatus,
                    decoration: const InputDecoration(
                      labelText: 'Status',
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 1,
                        child: Text('Active'),
                      ),
                      DropdownMenuItem(
                        value: 0,
                        child: Text('InActive'),
                      ),
                    ],
                    onChanged: (value) {
                      if (value != null) {
                        controller.setUserStatus(value);
                      }
                    },
                  ),
                ],
              ),
            ),

            SolidButton(title: 'Edit', onTap: () {
              controller.edit();
            }),
          ],
        ),
      ),
    );
  }

}