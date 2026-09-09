import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class OverviewContainer extends StatelessWidget {
  const OverviewContainer({
    super.key,
    required this.title,
    required this.child,
    this.icon,
    this.onTap,
  });

  final String title;
  final Widget child;
  final SvgGenImage? icon;
  final void Function()? onTap;

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
              borderRadius: BorderRadius.circular(8)
            ),
            padding: .symmetric(vertical: 20, horizontal: 20),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Color(0xff0B1C30),
                    fontWeight: .w600,
                    fontSize: 18,
                  ),
                ),

                InkWell(
                  onTap: onTap,
                  child: Container(child: icon?.svg(width: 16, height: 16)),
                ),
              ],
            ),
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
