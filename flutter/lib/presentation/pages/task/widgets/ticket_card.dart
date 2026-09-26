import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({super.key, required this.ticket});

  final Ticket ticket;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(horizontal: 12, vertical: 12),
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
            Text(
              ticket.title,
              style: TextStyle(
                color: Color(0xff0B1C30),
                fontWeight: .w500,
                fontSize: 14,
              ),
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
                    children: [
                      Assets.lib.infrastructure.assets.icons.lightBulb.svg(),
                    ],
                  ),
                  Row(
                    spacing: 12,
                    children: [
                      Assets.lib.infrastructure.assets.icons.message.svg(),
                      Assets.lib.infrastructure.assets.icons.attachment.svg(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
