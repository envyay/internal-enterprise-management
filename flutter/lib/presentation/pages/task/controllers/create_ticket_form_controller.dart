import 'package:enterprise_management/application/use_cases/tickets/create_ticket/create_ticket_command.dart';
import 'package:enterprise_management/application/use_cases/tickets/set_users_in_ticket/set_users_in_ticket_command.dart';
import 'package:enterprise_management/application/use_cases/tickets/update_ticket/update_ticket_command.dart';
import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/presentation/forms/create_ticket_form.dart';
import 'package:enterprise_management/presentation/forms/inputs/description_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_ticket_form_controller.g.dart';
@Riverpod()
class CreateTicketFormController extends _$CreateTicketFormController {
  @override
  CreateTicketForm build(Ticket? ticket) {
    return CreateTicketForm(
      title: NameInput.dirty(ticket?.title ?? ""),
      description: DescriptionInput.dirty(ticket?.description ?? ""),
      users: ticket?.users ?? []
    );
  }

  void setTitle(String value) {
    state = state.copyWith(title: NameInput.dirty(value));
  }

  void setDescription(String value) {
    state = state.copyWith(description: DescriptionInput.dirty(value));
  }

  void setUsers(List<User> users){
    state = state.copyWith(users: List.of(users));
  }

  Future<void> submit(String ticketStatusId) async {
    if(state.isNotValid) return;
    final title = state.title.value;
    final description = state.description.value;
    final users = state.users.map((item) => item.id).toList();
    final mediator = ref.read(mediatorProvider);
    await mediator.send(CreateTicketCommand(title: title, description: description, ticketStatusId: ticketStatusId, userIds: users));

    final router = ref.read(appRouterProvider);
    router.pop();
  }

  Future<void> edit(String ticketStatusId) async {
    if(state.isNotValid) return;
    final title = state.title.value;
    final description = state.description.value;
    // final userIds = state.users.map((item) => item.id).toList();
    final mediator = ref.read(mediatorProvider);
    
    // 1. Cập nhật Title và Description
    await mediator.send(UpdateTicketCommand(
      id: ticket?.id ?? '',
      title: title,
      description: description,
      ticketStatusId: ticketStatusId,
    ));

    // 2. Cập nhật danh sách User bằng API riêng để tránh lỗi 500
    // await mediator.send(SetUsersInTicketCommand(
    //   id: ticket?.id ?? '',
    //   userIds: userIds,
    // ));

    final router = ref.read(appRouterProvider);
    router.pop();

  }




  bool get isValid => state.isValid;
}