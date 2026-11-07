import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
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
            ],
          ),
        ),
      ),
    );
  }
}
