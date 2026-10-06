// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_in_ticket_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UsersInTicketController)
final usersInTicketControllerProvider = UsersInTicketControllerFamily._();

final class UsersInTicketControllerProvider
    extends $AsyncNotifierProvider<UsersInTicketController, List<User>> {
  UsersInTicketControllerProvider._({
    required UsersInTicketControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'usersInTicketControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$usersInTicketControllerHash();

  @override
  String toString() {
    return r'usersInTicketControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  UsersInTicketController create() => UsersInTicketController();

  @override
  bool operator ==(Object other) {
    return other is UsersInTicketControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$usersInTicketControllerHash() =>
    r'7dfa57723a72d2bac918a265e96f3a248d5abbdb';

final class UsersInTicketControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          UsersInTicketController,
          AsyncValue<List<User>>,
          List<User>,
          FutureOr<List<User>>,
          String
        > {
  UsersInTicketControllerFamily._()
    : super(
        retry: null,
        name: r'usersInTicketControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UsersInTicketControllerProvider call(String ticketId) =>
      UsersInTicketControllerProvider._(argument: ticketId, from: this);

  @override
  String toString() => r'usersInTicketControllerProvider';
}

abstract class _$UsersInTicketController extends $AsyncNotifier<List<User>> {
  late final _$args = ref.$arg as String;
  String get ticketId => _$args;

  FutureOr<List<User>> build(String ticketId);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<User>>, List<User>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<User>>, List<User>>,
              AsyncValue<List<User>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
