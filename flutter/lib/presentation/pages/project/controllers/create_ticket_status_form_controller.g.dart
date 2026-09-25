// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ticket_status_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateTicketStatusFormController)
final createTicketStatusFormControllerProvider =
    CreateTicketStatusFormControllerProvider._();

final class CreateTicketStatusFormControllerProvider
    extends
        $NotifierProvider<
          CreateTicketStatusFormController,
          CreateTicketStatusForm
        > {
  CreateTicketStatusFormControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createTicketStatusFormControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createTicketStatusFormControllerHash();

  @$internal
  @override
  CreateTicketStatusFormController create() =>
      CreateTicketStatusFormController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateTicketStatusForm value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateTicketStatusForm>(value),
    );
  }
}

String _$createTicketStatusFormControllerHash() =>
    r'7345b4be3a578d5179807df043cff2298e6d0c21';

abstract class _$CreateTicketStatusFormController
    extends $Notifier<CreateTicketStatusForm> {
  CreateTicketStatusForm build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<CreateTicketStatusForm, CreateTicketStatusForm>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CreateTicketStatusForm, CreateTicketStatusForm>,
              CreateTicketStatusForm,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
