// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ticket_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateTicketFormController)
final createTicketFormControllerProvider = CreateTicketFormControllerFamily._();

final class CreateTicketFormControllerProvider
    extends $NotifierProvider<CreateTicketFormController, CreateTicketForm> {
  CreateTicketFormControllerProvider._({
    required CreateTicketFormControllerFamily super.from,
    required Ticket? super.argument,
  }) : super(
         retry: null,
         name: r'createTicketFormControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$createTicketFormControllerHash();

  @override
  String toString() {
    return r'createTicketFormControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  CreateTicketFormController create() => CreateTicketFormController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateTicketForm value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateTicketForm>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CreateTicketFormControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$createTicketFormControllerHash() =>
    r'3726bd1e8c42738bbbe479e34b844b214e297451';

final class CreateTicketFormControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          CreateTicketFormController,
          CreateTicketForm,
          CreateTicketForm,
          CreateTicketForm,
          Ticket?
        > {
  CreateTicketFormControllerFamily._()
    : super(
        retry: null,
        name: r'createTicketFormControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CreateTicketFormControllerProvider call(Ticket? ticket) =>
      CreateTicketFormControllerProvider._(argument: ticket, from: this);

  @override
  String toString() => r'createTicketFormControllerProvider';
}

abstract class _$CreateTicketFormController
    extends $Notifier<CreateTicketForm> {
  late final _$args = ref.$arg as Ticket?;
  Ticket? get ticket => _$args;

  CreateTicketForm build(Ticket? ticket);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<CreateTicketForm, CreateTicketForm>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CreateTicketForm, CreateTicketForm>,
              CreateTicketForm,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
