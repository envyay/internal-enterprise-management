// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_comment_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateCommentFormController)
final createCommentFormControllerProvider =
    CreateCommentFormControllerFamily._();

final class CreateCommentFormControllerProvider
    extends $NotifierProvider<CreateCommentFormController, CreateCommentForm> {
  CreateCommentFormControllerProvider._({
    required CreateCommentFormControllerFamily super.from,
    required Comment? super.argument,
  }) : super(
         retry: null,
         name: r'createCommentFormControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$createCommentFormControllerHash();

  @override
  String toString() {
    return r'createCommentFormControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  CreateCommentFormController create() => CreateCommentFormController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateCommentForm value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateCommentForm>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CreateCommentFormControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$createCommentFormControllerHash() =>
    r'e725165ea96ecd8c9b3242453336fb8d7434407b';

final class CreateCommentFormControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          CreateCommentFormController,
          CreateCommentForm,
          CreateCommentForm,
          CreateCommentForm,
          Comment?
        > {
  CreateCommentFormControllerFamily._()
    : super(
        retry: null,
        name: r'createCommentFormControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CreateCommentFormControllerProvider call(Comment? comment) =>
      CreateCommentFormControllerProvider._(argument: comment, from: this);

  @override
  String toString() => r'createCommentFormControllerProvider';
}

abstract class _$CreateCommentFormController
    extends $Notifier<CreateCommentForm> {
  late final _$args = ref.$arg as Comment?;
  Comment? get comment => _$args;

  CreateCommentForm build(Comment? comment);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<CreateCommentForm, CreateCommentForm>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CreateCommentForm, CreateCommentForm>,
              CreateCommentForm,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
