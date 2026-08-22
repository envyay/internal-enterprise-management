import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Color(0xffC3C6D1))),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 16,
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: const Color(0xff737780)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Expanded(
            child: Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Review Q3 Financial Disclosures',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1,
                    color: Color(0xff0B1C30),
                  ),
                ),
                Row(
                  spacing: 8,
                  children: [
                    Assets.icons.clock.svg(
                      height: 20,
                      width: 20,
                    ),
                    const Text(
                      'Due Today',
                      style: TextStyle(
                        color: Color(0xff43474F),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: const Color(0xffFFDAD6),
              borderRadius: BorderRadius.circular(2),
            ),
            child: const Text(
              'High',
              style: TextStyle(
                color: Color(0xff93000A),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
