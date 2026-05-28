import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavigationItem extends StatelessWidget {
  const NavigationItem({
    super.key,
    required this.title,
    required this.assetsPath,
    this.onTap,
    this.active = true,
  });

  final String title;
  final String assetsPath;
  final void Function()? onTap;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: .only(right: 17),
      decoration: BoxDecoration(
        color: active ? Color(0xffEFF4FF) : null,
        borderRadius: .only(topRight: .circular(8), bottomRight: .circular(8)),
        border: active
            ? Border(left: BorderSide(color: Color(0xff001E40), width: 4))
            : null,
      ),
      child: Material(
        type: .transparency,
        child: InkWell(
          borderRadius: .only(topRight: .circular(8), bottomRight: .circular(8)),
          onTap: onTap,
          child: Container(
            padding: .symmetric(vertical: 10, horizontal: 16),
            child: Row(
              spacing: 12,
              children: [
                SizedBox(
                  width: 20,
                  height: 20,
                  child: SvgPicture.asset(
                    'assets/$assetsPath',
                    fit: .contain,
                    colorFilter: .mode(
                      active ? Color(0xff001E40) : Color(0xff43474F),
                      .srcIn,
                    ),
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: active ? Color(0xff001E40) : Color(0xff43474F),
                    fontSize: 14,
                    fontWeight: .w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
