import 'package:enterprise_management/application/use_cases/ticket_statuses/create_ticket_status/create_ticket_status_command.dart';
import 'package:enterprise_management/presentation/forms/create_ticket_status_form.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_ticket_status_form_controller.g.dart';
@Riverpod()
class CreateTicketStatusFormController extends _$CreateTicketStatusFormController {
  @override
  CreateTicketStatusForm build() {
    return CreateTicketStatusForm();
  }

  void setName(String value) {
    state = state.copyWith(name: NameInput.dirty(value));
  }

  Future<void> submit(String projectId) async {
    if(state.isNotValid) return;
    final name = state.name.value;
    final mediator = ref.read(mediatorProvider);
    await mediator.send(CreateTicketStatusCommand(name: name, projectId: projectId));
    final router = ref.read(appRouterProvider);
    router.pop();
  }

  bool get isValid => state.isValid;
}