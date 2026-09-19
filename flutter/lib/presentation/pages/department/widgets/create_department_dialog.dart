import 'package:auto_route/auto_route.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/pages/department/controllers/create_department_form_controller.dart';
import 'package:enterprise_management/presentation/pages/department/controllers/departments_controller.dart';
import 'package:enterprise_management/presentation/widgets/solid_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateDepartmentDialog extends ConsumerWidget {
  const CreateDepartmentDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final departmentsController = ref.watch(
      departmentsControllerProvider.notifier,
    );
    final form = ref.watch(createDepartmentFormControllerProvider.notifier);
    final state = ref.watch(createDepartmentFormControllerProvider);
    final error = state.name.error?.errorMessage;
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
          mainAxisSize: .min,
          children: [
            Container(
              width: .infinity,
              decoration: BoxDecoration(
                color: Color(0xffF8F9FF),
                border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xffC3C6D1)),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: .symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisSize: .min,
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(
                    'Create Department',
                    style: TextStyle(
                      color: Color(0xff0B1C30),
                      fontWeight: .w600,
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
            TextField(
              onChanged: (value) {
                form.setName(value);
              },
              decoration: InputDecoration(
                label: Text('Name'),
                errorText: error,
              ),
            ),
            SolidButton(
              title: 'Create',
              onTap: () async {
                await form.submit();
                departmentsController.refresh();
              },
            ),
          ],
        ),
      ),
    );
  }
}
