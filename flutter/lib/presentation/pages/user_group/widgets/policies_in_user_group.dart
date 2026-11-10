import 'package:enterprise_management/domain/aggregates/user_group_policy/user_group_policy.dart';
import 'package:enterprise_management/presentation/controllers/policies_controller.dart';
import 'package:enterprise_management/presentation/pages/user_group/controllers/user_group_policies_controller.dart';
import 'package:enterprise_management/shared_kernel/constant/constants.dart';
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
  ConsumerState<PoliciesInUserGroup> createState() =>
      _PoliciesInUserGroupState();
}

class _FeatureGroupDefinition {
  final String title;
  final List<String> policies;

  const _FeatureGroupDefinition({
    required this.title,
    required this.policies,
  });
}

class _PoliciesInUserGroupState extends ConsumerState<PoliciesInUserGroup> {
  late Set<String> _selectedPolicyIds;
  bool _isSaving = false;

  static const List<_FeatureGroupDefinition> _featureGroups = [
    _FeatureGroupDefinition(
      title: 'Chat Feature:',
      policies: [
        AppPolicy.chat,
        AppPolicy.getConversations,
        AppPolicy.getChatMessagesByConversationId,
        AppPolicy.createConversation,
        AppPolicy.createChatMessage,
        AppPolicy.deleteConversationById,
      ],
    ),
    _FeatureGroupDefinition(
      title: 'User Feature:',
      policies: [
        AppPolicy.getAllUsers,
        AppPolicy.createUser,
        AppPolicy.getProjectsByUserId,
        AppPolicy.updateUser,
        AppPolicy.deleteUser,
      ],
    ),
    _FeatureGroupDefinition(
      title: 'User Group Feature:',
      policies: [
        AppPolicy.getAllUserGroupPolicies,
        AppPolicy.getAllUserGroups,
        AppPolicy.getByIdUserGroup,
        AppPolicy.getUsersByUserGroupId,
        AppPolicy.setUsersInUserGroup,
        AppPolicy.setPoliciesInUserGroup,
        AppPolicy.createUserGroup,
        AppPolicy.updateUserGroup,
        AppPolicy.deleteUserGroup,
        AppPolicy.removePolicyFromUserGroup,
        AppPolicy.removeUserFromUserGroup,
      ],
    ),
    _FeatureGroupDefinition(
      title: 'Department Feature:',
      policies: [
        AppPolicy.getAllDepartments,
        AppPolicy.getByIdDepartment,
        AppPolicy.createDepartment,
        AppPolicy.updateDepartment,
        AppPolicy.deleteDepartment,
        AppPolicy.setUsersInDepartment,
      ],
    ),
    _FeatureGroupDefinition(
      title: 'Project Feature:',
      policies: [
        AppPolicy.getAllProjects,
        AppPolicy.getByIdProject,
        AppPolicy.getTicketStatusesByProjectId,
        AppPolicy.getUsersByProjectId,
        AppPolicy.createProject,
        AppPolicy.updateProject,
        AppPolicy.deleteProject,
        AppPolicy.setUsersInProject,
      ],
    ),
    _FeatureGroupDefinition(
      title: 'Document Feature:',
      policies: [
        AppPolicy.getAllDocuments,
        AppPolicy.getByIdDocument,
        AppPolicy.getDocumentsByDepartment,
        AppPolicy.getDocumentsByDepartments,
        AppPolicy.getDocumentsByTicket,
        AppPolicy.getDocumentsByTickets,
        AppPolicy.createDocument,
        AppPolicy.updateDocument,
        AppPolicy.deleteDocument,
        AppPolicy.downloadDocument,
        AppPolicy.uploadDocument,
      ],
    ),
    _FeatureGroupDefinition(
      title: 'Ticket Feature:',
      policies: [
        AppPolicy.getAllTickets,
        AppPolicy.getByIdTicket,
        AppPolicy.getUsersByTicketId,
        AppPolicy.setUsersInTicket,
        AppPolicy.getCommentsByTicketId,
        AppPolicy.createTicket,
        AppPolicy.updateTicket,
        AppPolicy.updateTicketByTicketStatus,
        AppPolicy.deleteTicket,
      ],
    ),
    _FeatureGroupDefinition(
      title: 'Ticket Status Feature:',
      policies: [
        AppPolicy.getAllTicketStatuses,
        AppPolicy.getByIdTicketStatus,
        AppPolicy.getTicketsByTicketStatusId,
        AppPolicy.createTicketStatus,
        AppPolicy.updateTicketStatus,
        AppPolicy.deleteTicketStatus,
      ],
    ),
    _FeatureGroupDefinition(
      title: 'Comment Feature:',
      policies: [
        AppPolicy.getAllComments,
        AppPolicy.getByIdComment,
        AppPolicy.createComment,
        AppPolicy.updateComment,
        AppPolicy.deleteComment,
      ],
    ),
  ];

  @override
  void initState() {
    super.initState();
    _selectedPolicyIds = Set.from(widget.initialSelectedPolicyIds);
  }

  @override
  void didUpdateWidget(covariant PoliciesInUserGroup oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!setEquals(
      oldWidget.initialSelectedPolicyIds,
      widget.initialSelectedPolicyIds,
    )) {
      setState(() {
        _selectedPolicyIds = Set.from(widget.initialSelectedPolicyIds);
      });
    }
  }

  String _formatPolicyName(String policy) {
    return policy.replaceAllMapped(
      RegExp(r'(?<=[a-z0-9])([A-Z])|(?<=[A-Z])([A-Z][a-z])'),
      (match) => ' ${match.group(1) ?? match.group(2)}',
    );
  }

  @override
  Widget build(BuildContext context) {
    final policiesState = ref.watch(userGroupPoliciesControllerProvider);
    final currentAppPolicies = ref.watch(
      policiesControllerProvider.select((x) => x.value ?? []),
    );

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Policies List grouped by Feature
          Expanded(
            child: policiesState.when(
              data: (allPolicies) {
                // Group policies into defined features
                final matched = <String>{};
                final groups = <({String title, List<UserGroupPolicy> items})>[];

                for (final def in _featureGroups) {
                  final groupPolicies = allPolicies.where((p) {
                    final isMember = def.policies.any(
                      (name) => name.toLowerCase() == p.policy.toLowerCase(),
                    );
                    if (isMember) {
                      matched.add(p.policy.toLowerCase());
                    }
                    return isMember;
                  }).toList();

                  if (groupPolicies.isNotEmpty) {
                    groups.add((title: def.title, items: groupPolicies));
                  }
                }

                // Any leftover policies not recognized in definitions
                final others = allPolicies
                    .where((p) => !matched.contains(p.policy.toLowerCase()))
                    .toList();
                if (others.isNotEmpty) {
                  groups.add((title: 'Other Feature:', items: others));
                }

                return ListView.builder(
                  itemCount: groups.length,
                  itemBuilder: (context, groupIndex) {
                    final group = groups[groupIndex];
                    final isLastGroup = groupIndex == groups.length - 1;

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Feature Header
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 4, left: 4),
                          child: Text(
                            group.title,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF001E40),
                            ),
                          ),
                        ),

                        // Checkbox items in this Feature
                        ...group.items.map((policy) {
                          final isSelected = _selectedPolicyIds.contains(
                            policy.policy,
                          );

                          return _PolicyCheckboxItem(
                            key: ValueKey(policy.policy),
                            policyKey: policy.policy,
                            displayName: _formatPolicyName(policy.policy),
                            isSelected: isSelected,
                            onChanged: (val) {
                              if (val == true) {
                                _selectedPolicyIds.add(policy.policy);
                              } else {
                                _selectedPolicyIds.remove(policy.policy);
                              }
                            },
                          );
                        }),

                        // Divider between features
                        if (!isLastGroup)
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              color: Color(0xFFE0E2EC),
                            ),
                          ),
                      ],
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

          // Action Buttons (Save)
          if (currentAppPolicies.contains(AppPolicy.setPoliciesInUserGroup))
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: _isSaving
                      ? null
                      : () async {
                          final allPolicies = policiesState.value ?? [];
                          final selectedPolicies = allPolicies
                              .where(
                                (u) => _selectedPolicyIds.contains(u.policy),
                              )
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
                    backgroundColor: const Color(0xFF001E40),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
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

class _PolicyCheckboxItem extends StatefulWidget {
  const _PolicyCheckboxItem({
    super.key,
    required this.policyKey,
    required this.displayName,
    required this.isSelected,
    required this.onChanged,
  });

  final String policyKey;
  final String displayName;
  final bool isSelected;
  final ValueChanged<bool?> onChanged;

  @override
  State<_PolicyCheckboxItem> createState() => _PolicyCheckboxItemState();
}

class _PolicyCheckboxItemState extends State<_PolicyCheckboxItem> {
  late bool _isSelected;

  @override
  void initState() {
    super.initState();
    _isSelected = widget.isSelected;
  }

  @override
  void didUpdateWidget(covariant _PolicyCheckboxItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isSelected != widget.isSelected) {
      _isSelected = widget.isSelected;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final newVal = !_isSelected;
        setState(() {
          _isSelected = newVal;
        });
        widget.onChanged(newVal);
      },
      borderRadius: BorderRadius.circular(6),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
        child: Row(
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: Checkbox(
                value: _isSelected,
                activeColor: const Color(0xFF001E40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                onChanged: (val) {
                  setState(() {
                    _isSelected = val ?? false;
                  });
                  widget.onChanged(val);
                },
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                widget.displayName,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF191C20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
