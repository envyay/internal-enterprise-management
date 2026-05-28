import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  const BasePage({super.key, required this.title, required this.description, required this.child});

  final String title;
  final String description;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .only(left: 32, right: 32, top: 32),
      child: Column(
        spacing: 32,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            crossAxisAlignment: .end,
            children: [
              Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Color(0xff0B1C30),
                      fontSize: 32,
                      fontWeight: .w600,
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      color: Color(0xff43474F),
                      fontSize: 14,
                      fontWeight: .w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(child: child)
        ],
      ),
    );
  }
}
