import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    super.key,
    required this.title,
    required this.description,
    required this.child,
    this.dropDown,
    this.subHeader,
  });

  final String title;
  final String description;
  final Widget child;
  final Widget? dropDown;
  final Widget? subHeader;

  @override
  Widget build(BuildContext context) {
    final headerBottomWidget = subHeader ?? dropDown;
    return Container(
      padding: const EdgeInsets.only(left: 32, right: 32, top: 32),
      child: Column(
        spacing: 32,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color(0xff0B1C30),
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: const TextStyle(
                        color: Color(0xff43474F),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (headerBottomWidget != null) ...[
                      const SizedBox(height: 16),
                      headerBottomWidget,
                    ],
                  ],
                ),
              ),
            ],
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
