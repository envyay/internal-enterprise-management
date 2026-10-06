import 'package:enterprise_management/application/use_cases/comments/create_comment/create_comment_command.dart';
import 'package:enterprise_management/application/use_cases/comments/update_comment/update_comment_command.dart';
import 'package:enterprise_management/domain/aggregates/comment/comment.dart';
import 'package:enterprise_management/presentation/forms/create_comment_form.dart';
import 'package:enterprise_management/presentation/forms/inputs/description_input.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_comment_form_controller.g.dart';
@Riverpod()
class CreateCommentFormController extends _$CreateCommentFormController {
  @override
  CreateCommentForm build(Comment? comment) {
    return CreateCommentForm(
      content: DescriptionInput.dirty(comment?.content ?? "")
    );
  }

  void setContent(String value) {
    state = state.copyWith(content: DescriptionInput.dirty(value));
  }

  Future<void> submit(String ticketId) async{
    final content = state.content.value.trim();
    if(content.isEmpty) return;
    final mediator = ref.read(mediatorProvider);
    await mediator.send(CreateCommentCommand(content: content, ticketId: ticketId));
  }

  Future<void> edit(String id) async{
    if(state.isNotValid) return;
    final content = state.content.value;
    final mediator = ref.read(mediatorProvider);
    await mediator.send(UpdateCommentCommand(id: id, content: content));
    final router = ref.read(appRouterProvider);
    router.pop();
  }

}