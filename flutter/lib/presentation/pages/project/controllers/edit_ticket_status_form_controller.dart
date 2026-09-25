import 'package:enterprise_management/application/use_cases/ticket_statuses/update_ticket_status/update_ticket_status_command.dart';
import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/presentation/forms/edit_ticket_status_form.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/pages/project/controllers/ticket_statuses_in_project_controller.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_ticket_status_form_controller.g.dart';

@Riverpod()
class EditTicketStatusFormController extends _$EditTicketStatusFormController {
  @override
  EditTicketStatusForm build(TicketStatus ticketStatus) {
    return EditTicketStatusForm(name: NameInput.dirty(ticketStatus.name));
  }

  void setName(String value) {
    state = state.copyWith(name: NameInput.dirty(value));
  }

  Future<void> edit() async {
    final name = state.name.value;
    final mediator = ref.read(mediatorProvider);
    await mediator.send(UpdateTicketStatusCommand(id: ticketStatus.id, name: name));

    ref.invalidate(ticketStatusesInProjectControllerProvider);

    final router = ref.read(appRouterProvider);
    router.pop();
  }
}