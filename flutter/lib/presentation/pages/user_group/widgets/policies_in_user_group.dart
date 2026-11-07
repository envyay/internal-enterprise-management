import 'package:enterprise_management/domain/aggregates/user_group_policy/user_group_policy.dart';
import 'package:enterprise_management/presentation/pages/user_group/controllers/policies_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PoliciesInUserGroup extends ConsumerStatefulWidget {
  const PoliciesInUserGroup({
    super.key,
    this.initialSelectedPolicyIds = const {},
    this.onSave,
  });

  final Set<String> initialSelectedPolicyIds;
  final void Function(List<UserGroupPolicy> selectedPolicies)? onSave;

  @override
  ConsumerState<PoliciesInUserGroup> createState() => _PoliciesInUserGroupState();
}

class _PoliciesInUserGroupState extends ConsumerState<PoliciesInUserGroup> {
  late Set<String> _selectedPolicyIds;
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    _selectedPolicyIds = Set.from(widget.initialSelectedPolicyIds);
  }

  @override
  void didUpdateWidget(covariant PoliciesInUserGroup oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!setEquals(oldWidget.initialSelectedPolicyIds, widget.initialSelectedPolicyIds)) {
      setState(() {
        _selectedPolicyIds = Set.from(widget.initialSelectedPolicyIds);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final policiesState = ref.watch(policiesControllerProvider);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Policies List
          Expanded(
            child: policiesState.when(
              data: (policies) {
                return ListView.separated(
                  itemCount: policies.length,
                  separatorBuilder: (context, index) =>
                      const Divider(height: 1),
                  itemBuilder: (context, index) {
                    final policy = policies[index];
                    final isSelected = _selectedPolicyIds.contains(policy.policy);

                    return CheckboxListTile(
                      value: isSelected,
                      onChanged: (val) {
                        setState(() {
                          if (val == true) {
                            _selectedPolicyIds.add(policy.policy);
                          } else {
                            _selectedPolicyIds.remove(policy.policy);
                          }
                        });
                      },
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(
                              policy.policy,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF191C20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              error: (err, stack) =>
                  const Center(child: Text('Error loading policies list')),
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
          ),
          const SizedBox(height: 16),

          // Action Buttons (Cancel & Save)
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: _isSaving
                    ? null
                    : () async {
                        final allPolicies = policiesState.value ?? [];
                        final selectedPolicies = allPolicies
                            .where((u) => _selectedPolicyIds.contains(u.policy))
                            .toList();

                        if (widget.onSave != null) {
                          setState(() => _isSaving = true);
                          try {
                            widget.onSave!(selectedPolicies);
                          } finally {
                            if (mounted) setState(() => _isSaving = false);
                          }
                        }
                      },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF005AC1),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: _isSaving
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : const Text('Save'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
