// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_in_project_task_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UsersInProjectTaskController)
final usersInProjectTaskControllerProvider =
    UsersInProjectTaskControllerFamily._();

final class UsersInProjectTaskControllerProvider
    extends $AsyncNotifierProvider<UsersInProjectTaskController, List<User>> {
  UsersInProjectTaskControllerProvider._({
    required UsersInProjectTaskControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'usersInProjectTaskControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$usersInProjectTaskControllerHash();

  @override
  String toString() {
    return r'usersInProjectTaskControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  UsersInProjectTaskController create() => UsersInProjectTaskController();

  @override
  bool operator ==(Object other) {
    return other is UsersInProjectTaskControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$usersInProjectTaskControllerHash() =>
    r'c6a0aa4297b453b4755b9f0efc05ac14d39a413e';

final class UsersInProjectTaskControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          UsersInProjectTaskController,
          AsyncValue<List<User>>,
          List<User>,
          FutureOr<List<User>>,
          String
        > {
  UsersInProjectTaskControllerFamily._()
    : super(
        retry: null,
        name: r'usersInProjectTaskControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UsersInProjectTaskControllerProvider call(String projectId) =>
      UsersInProjectTaskControllerProvider._(argument: projectId, from: this);

  @override
  String toString() => r'usersInProjectTaskControllerProvider';
}

abstract class _$UsersInProjectTaskController
    extends $AsyncNotifier<List<User>> {
  late final _$args = ref.$arg as String;
  String get projectId => _$args;

  FutureOr<List<User>> build(String projectId);
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
