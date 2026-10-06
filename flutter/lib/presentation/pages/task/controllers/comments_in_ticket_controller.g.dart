// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_in_ticket_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CommentsInTicketController)
final commentsInTicketControllerProvider = CommentsInTicketControllerFamily._();

final class CommentsInTicketControllerProvider
    extends $AsyncNotifierProvider<CommentsInTicketController, List<Comment>> {
  CommentsInTicketControllerProvider._({
    required CommentsInTicketControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'commentsInTicketControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$commentsInTicketControllerHash();

  @override
  String toString() {
    return r'commentsInTicketControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  CommentsInTicketController create() => CommentsInTicketController();

  @override
  bool operator ==(Object other) {
    return other is CommentsInTicketControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$commentsInTicketControllerHash() =>
    r'fd1899b30124b27ce44c53a645a603fae355c9cb';

final class CommentsInTicketControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          CommentsInTicketController,
          AsyncValue<List<Comment>>,
          List<Comment>,
          FutureOr<List<Comment>>,
          String
        > {
  CommentsInTicketControllerFamily._()
    : super(
        retry: null,
        name: r'commentsInTicketControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CommentsInTicketControllerProvider call(String ticketId) =>
      CommentsInTicketControllerProvider._(argument: ticketId, from: this);

  @override
  String toString() => r'commentsInTicketControllerProvider';
}

abstract class _$CommentsInTicketController
    extends $AsyncNotifier<List<Comment>> {
  late final _$args = ref.$arg as String;
  String get ticketId => _$args;

  FutureOr<List<Comment>> build(String ticketId);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Comment>>, List<Comment>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Comment>>, List<Comment>>,
              AsyncValue<List<Comment>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
