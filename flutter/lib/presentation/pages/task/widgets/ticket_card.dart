import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/edit_ticket_drawer.dart';
import 'package:flutter/material.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({super.key, required this.ticket, required this.onTap, this.onPressed});

  final Ticket ticket;
  final Function() onTap;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(horizontal: 12, vertical: 12),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: .symmetric(horizontal: 12, vertical: 12),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffC3C6D1), width: 1),
            borderRadius: .circular(4),
          ),
          child: Column(
            crossAxisAlignment: .start,
            spacing: 4,
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(
                    ticket.title,
                    style: TextStyle(
                      color: Color(0xff0B1C30),
                      fontWeight: .w500,
                      fontSize: 14,
                    ),
                  ),

                  IconButton(
                    icon: const Icon(
                      Icons.edit_outlined,
                      size: 18,
                      color: Color(0xff006C49),
                    ),
                    onPressed: onPressed,
                    tooltip: 'Edit',
                  ),
                ],
              ),
              Text(
                ticket.description,
                style: TextStyle(
                  color: Color(0xff43474F),
                  fontSize: 12,
                  fontWeight: .w400,
                ),
              ),
              Container(
                margin: .only(top: 12),
                padding: .symmetric(vertical: 8),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1, color: Color(0xffE5EEFF)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(

                      spacing: 10,
                      children: [
                        Assets.lib.infrastructure.assets.icons.subtask.svg(),

                        Text('Subtask')
                      ],
                    ),
                    Assets.lib.infrastructure.assets.icons.message.svg(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
