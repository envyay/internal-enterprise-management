import 'package:auto_route/auto_route.dart';
import 'package:enterprise_management/domain/aggregates/project/project.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/pages/project/controllers/edit_project_form_controller.dart';
import 'package:enterprise_management/presentation/widgets/solid_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditProjectDialog extends ConsumerWidget {
  const EditProjectDialog({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(editProjectFormControllerProvider(project).notifier);
    final state = ref.watch(editProjectFormControllerProvider(project));
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
                    'Edit Project',
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
            Column(
              children: [
                TextFormField(
                  initialValue: state.name.value,
                  onChanged: (value) {
                    controller.setName(value);
                  },
                  decoration: InputDecoration(
                    label: const Text('Name'),
                    errorText: error,
                  ),
                ),
                TextFormField(
                  initialValue: state.description.value,
                  onChanged: (value) {
                    controller.setDescription(value);
                  },
                  decoration: InputDecoration(
                    label: const Text('Description'),
                    errorText: error,
                  ),
                ),
                TextFormField(
                  initialValue: state.code.value,
                  onChanged: (value) {
                    controller.setCode(value);
                  },
                  decoration: InputDecoration(
                    label: const Text('Code'),
                    errorText: error,
                  ),
                ),
              ],
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