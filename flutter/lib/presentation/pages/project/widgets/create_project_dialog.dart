import 'package:auto_route/auto_route.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:enterprise_management/presentation/forms/inputs/code_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/description_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/pages/project/controllers/create_project_form_controller.dart';
import 'package:enterprise_management/presentation/pages/project/controllers/projects_controller.dart';
import 'package:enterprise_management/presentation/widgets/solid_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateProjectDialog extends ConsumerWidget {
  const CreateProjectDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(
      projectsControllerProvider.notifier,
    );
    final form = ref.watch(createProjectFormControllerProvider.notifier);
    final state = ref.watch(createProjectFormControllerProvider);
    final errorName = state.name.error?.errorMessage;
    final errorDescription = state.description.error?.errorMessage;
    final errorCode = state.code.error?.errorMessage;
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
                    'Create Project',
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
                errorText: errorName,
              ),
            ),
            TextField(
              onChanged: (value) {
                form.setDescription(value);
              },
              decoration: InputDecoration(
                label: Text('Description'),
                errorText: errorDescription,
              ),
            ),
            TextField(
              onChanged: (value) {
                form.setCode(value);
              },
              decoration: InputDecoration(
                label: Text('Code'),
                errorText: errorCode,
              ),
            ),
            SolidButton(
              title: 'Create',
              onTap: () async {
                await form.submit();
                controller.refresh();
              },
            ),
          ],
        ),
      ),
    );
  }
}
