import 'package:flutter/material.dart';

class OverviewContainer extends StatelessWidget {
  const OverviewContainer({super.key, required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: Color(0xffC3C6D1)),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xffF8F9FF),
              border: Border(
                bottom: BorderSide(width: 1, color: Color(0xffC3C6D1)),
              ),
            ),
            padding: .symmetric(vertical: 20, horizontal: 20),
            child: Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Color(0xff0B1C30),
                    fontWeight: .w600,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: child)
        ],
      ),
    );
  }
}