// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_ticket_status_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditTicketStatusFormController)
final editTicketStatusFormControllerProvider =
    EditTicketStatusFormControllerFamily._();

final class EditTicketStatusFormControllerProvider
    extends
        $NotifierProvider<
          EditTicketStatusFormController,
          EditTicketStatusForm
        > {
  EditTicketStatusFormControllerProvider._({
    required EditTicketStatusFormControllerFamily super.from,
    required TicketStatus super.argument,
  }) : super(
         retry: null,
         name: r'editTicketStatusFormControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$editTicketStatusFormControllerHash();

  @override
  String toString() {
    return r'editTicketStatusFormControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  EditTicketStatusFormController create() => EditTicketStatusFormController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditTicketStatusForm value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditTicketStatusForm>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is EditTicketStatusFormControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$editTicketStatusFormControllerHash() =>
    r'f9b52afb99dc6640bf4e5e8b57a5f5fff2fef4f4';

final class EditTicketStatusFormControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          EditTicketStatusFormController,
          EditTicketStatusForm,
          EditTicketStatusForm,
          EditTicketStatusForm,
          TicketStatus
        > {
  EditTicketStatusFormControllerFamily._()
    : super(
        retry: null,
        name: r'editTicketStatusFormControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EditTicketStatusFormControllerProvider call(TicketStatus ticketStatus) =>
      EditTicketStatusFormControllerProvider._(
        argument: ticketStatus,
        from: this,
      );

  @override
  String toString() => r'editTicketStatusFormControllerProvider';
}

abstract class _$EditTicketStatusFormController
    extends $Notifier<EditTicketStatusForm> {
  late final _$args = ref.$arg as TicketStatus;
  TicketStatus get ticketStatus => _$args;

  EditTicketStatusForm build(TicketStatus ticketStatus);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<EditTicketStatusForm, EditTicketStatusForm>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EditTicketStatusForm, EditTicketStatusForm>,
              EditTicketStatusForm,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
