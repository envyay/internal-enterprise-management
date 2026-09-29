// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_in_ticket_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UsersInTicketController)
final usersInTicketControllerProvider = UsersInTicketControllerProvider._();

final class UsersInTicketControllerProvider
    extends $AsyncNotifierProvider<UsersInTicketController, Ticket?> {
  UsersInTicketControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'usersInTicketControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$usersInTicketControllerHash();

  @$internal
  @override
  UsersInTicketController create() => UsersInTicketController();
}

String _$usersInTicketControllerHash() =>
    r'b943b191cfddc224f047a47bc294e303d1a31637';

abstract class _$UsersInTicketController extends $AsyncNotifier<Ticket?> {
  FutureOr<Ticket?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Ticket?>, Ticket?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Ticket?>, Ticket?>,
              AsyncValue<Ticket?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
