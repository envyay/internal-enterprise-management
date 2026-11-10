import 'package:auto_route/auto_route.dart';
import 'package:enterprise_management/domain/aggregates/project/project.dart';
import 'package:enterprise_management/presentation/forms/inputs/description_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/pages/project/controllers/edit_project_form_controller.dart';
import 'package:enterprise_management/presentation/pages/project/controllers/projects_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditProjectDialog extends ConsumerStatefulWidget {
  const EditProjectDialog({super.key, required this.project});

  final Project project;

  @override
  ConsumerState<EditProjectDialog> createState() => _EditProjectDialogState();
}

class _EditProjectDialogState extends ConsumerState<EditProjectDialog> {
  static const List<Map<String, dynamic>> projectStatuses = [
    {'value': 0, 'label': 'InActive', 'color': Color(0xFF74777F)},
    {'value': 1, 'label': 'Active', 'color': Color(0xFF006C49)},
    {'value': 2, 'label': 'Completed', 'color': Color(0xFF0061A4)},
    {'value': 3, 'label': 'OnHold', 'color': Color(0xFFB57000)},
    {'value': 4, 'label': 'Cancelled', 'color': Color(0xFFBA1A1A)},
  ];

  Future<void> _selectDate(BuildContext context, bool isStart, DateTime? currentDate) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: currentDate ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2035),
    );
    if (picked != null) {
      final formNotifier = ref.read(editProjectFormControllerProvider(widget.project).notifier);
      if (isStart) {
        formNotifier.setStartDate(picked);
      } else {
        formNotifier.setEndDate(picked);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(editProjectFormControllerProvider(widget.project).notifier);
    final state = ref.watch(editProjectFormControllerProvider(widget.project));
    final error = state.name.displayError?.errorMessage;
    final errorDescription = state.description.displayError?.errorMessage;

    String formatDate(DateTime? date) {
      if (date == null) return '';
      final d = date.day.toString().padLeft(2, '0');
      final m = date.month.toString().padLeft(2, '0');
      final y = date.year.toString();
      return '$d/$m/$y';
    }

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Container(
        width: 520,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              blurRadius: 20,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
              decoration: const BoxDecoration(
                color: Color(0xFFF8F9FD),
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                border: Border(bottom: BorderSide(color: Color(0xFFE0E2EC))),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Edit Project',
                    style: TextStyle(
                      color: Color(0xFF0B1C30),
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, size: 20, color: Color(0xFF43474F)),
                    onPressed: () => context.router.pop(),
                    splashRadius: 20,
                  ),
                ],
              ),
            ),

            // Form Content
            Flexible(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Code (Read-Only Chip)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0F4FD),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xFFC7D5E8)),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.tag, size: 18, color: Color(0xFF001E40)),
                          const SizedBox(width: 8),
                          Text(
                            'Project Code: ${widget.project.code}',
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF001E40),
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Name
                    const Text(
                      'Project Name *',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF191C20),
                      ),
                    ),
                    const SizedBox(height: 6),
                    TextFormField(
                      initialValue: state.name.value,
                      onChanged: (value) => controller.setName(value),
                      decoration: InputDecoration(
                        hintText: 'Enter project name',
                        errorText: error,
                        filled: true,
                        fillColor: const Color(0xFFFBFBFF),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Color(0xFFC3C6D1)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Color(0xFFC3C6D1)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Color(0xFF001E40), width: 1.5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Description
                    const Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF191C20),
                      ),
                    ),
                    const SizedBox(height: 6),
                    TextFormField(
                      initialValue: state.description.value,
                      maxLines: 3,
                      onChanged: (value) => controller.setDescription(value),
                      decoration: InputDecoration(
                        hintText: 'Enter project description',
                        errorText: errorDescription,
                        filled: true,
                        fillColor: const Color(0xFFFBFBFF),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Color(0xFFC3C6D1)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Color(0xFFC3C6D1)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Color(0xFF001E40), width: 1.5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Status Dropdown
                    const Text(
                      'Project Status',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF191C20),
                      ),
                    ),
                    const SizedBox(height: 6),
                    DropdownButtonFormField<int>(
                      initialValue: state.projectStatus,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFFBFBFF),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Color(0xFFC3C6D1)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Color(0xFFC3C6D1)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Color(0xFF001E40), width: 1.5),
                        ),
                      ),
                      items: projectStatuses.map((s) {
                        return DropdownMenuItem<int>(
                          value: s['value'] as int,
                          child: Row(
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: s['color'] as Color,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                s['label'] as String,
                                style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                      onChanged: (val) {
                        if (val != null) {
                          controller.setStatus(val);
                        }
                      },
                    ),
                    const SizedBox(height: 16),

                    // Dates (Start Date & End Date)
                    Row(
                      children: [
                        // Start Date
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Start Date',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF191C20),
                                ),
                              ),
                              const SizedBox(height: 6),
                              InkWell(
                                onTap: () => _selectDate(context, true, state.startDate),
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFBFBFF),
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: const Color(0xFFC3C6D1)),
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.calendar_today_outlined, size: 16, color: Color(0xFF43474F)),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Text(
                                          state.startDate != null
                                              ? formatDate(state.startDate)
                                              : 'Select start date',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: state.startDate != null
                                                ? const Color(0xFF191C20)
                                                : const Color(0xFF90909A),
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      if (state.startDate != null)
                                        InkWell(
                                          onTap: () => controller.setStartDate(null),
                                          child: const Icon(Icons.clear, size: 16, color: Color(0xFF74777F)),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 14),

                        // End Date
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'End Date',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF191C20),
                                ),
                              ),
                              const SizedBox(height: 6),
                              InkWell(
                                onTap: () => _selectDate(context, false, state.endDate),
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFBFBFF),
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: const Color(0xFFC3C6D1)),
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.event_outlined, size: 16, color: Color(0xFF43474F)),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Text(
                                          state.endDate != null
                                              ? formatDate(state.endDate)
                                              : 'Select end date',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: state.endDate != null
                                                ? const Color(0xFF191C20)
                                                : const Color(0xFF90909A),
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      if (state.endDate != null)
                                        InkWell(
                                          onTap: () => controller.setEndDate(null),
                                          child: const Icon(Icons.clear, size: 16, color: Color(0xFF74777F)),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Footer Actions
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              decoration: const BoxDecoration(
                color: Color(0xFFF8F9FD),
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
                border: Border(top: BorderSide(color: Color(0xFFE0E2EC))),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedButton(
                    onPressed: () => context.router.pop(),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                      side: const BorderSide(color: Color(0xFFC3C6D1)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(color: Color(0xFF43474F), fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton(
                    onPressed: () async {
                      await controller.edit();
                      ref.read(projectsControllerProvider.notifier).refresh();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF001E40),
                      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Save Changes',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}