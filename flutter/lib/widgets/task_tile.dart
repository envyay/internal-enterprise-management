import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(16),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Color(0xffC3C6D1)))),
      child: Row(
        crossAxisAlignment: .start,
        mainAxisAlignment: .start,
        spacing: 16,
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Color(0xff737780)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Expanded(
            child: Column(
              spacing: 8,
              crossAxisAlignment: .start,
              children: [
                Text(
                  'Review Q3 Financial Disclosures',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: .w500,
                    height: 1,
                    color: Color(0xff0B1C30),
                  ),
                ),
                Row(
                  spacing: 8,
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset('assets/clock.svg'),
                    ),
                    Text(
                      'Due Today',
                      style: TextStyle(
                        color: Color(0xff43474F),
                        fontWeight: .w400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: .symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(color: Color(0xffFFDAD6), borderRadius: .circular(2)),
            child: Text(
              'High',
              style: TextStyle(
                color: Color(0xff93000A),
                fontSize: 12,
                fontWeight: .w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
