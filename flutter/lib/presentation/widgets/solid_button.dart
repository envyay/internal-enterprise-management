import 'package:flutter/material.dart';

import '../../infrastructure/assets/gen/assets.gen.dart';


class SolidButton extends StatelessWidget {
  const SolidButton({
    super.key,
    this.margin,
    this.onTap,
    required this.title,
    this.prefix,
  });

  final EdgeInsetsGeometry? margin;
  final void Function()? onTap;
  final SvgGenImage? prefix;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: Color(0xff001E40).withAlpha(229),
        borderRadius: .all(.circular(4)),
      ),
      child: Material(
        type: .transparency,
        child: InkWell(
          borderRadius: .all(.circular(4)),
          onTap: onTap,
          child: Container(
            padding: .symmetric(vertical: 12, horizontal: 20),
            alignment: .center,
            child: Row(
              mainAxisAlignment: .center,
              children: [
                (prefix == null)
                    ? const SizedBox()
                    : Container(
                        margin: .only(right: 8),
                        child: prefix!.svg(
                          height: 16,
                          width: 16,
                          colorFilter: .mode(Color(0xffFFFFFF), .srcIn),
                        ),
                      ),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFFFFFF),
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
