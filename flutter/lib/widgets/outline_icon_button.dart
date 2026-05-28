import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OutlineIconButton extends StatelessWidget {
  const OutlineIconButton({
    super.key,
    required this.title,
    this.assetsPath,
    this.margin,
    this.onTap,
  });

  final String title;
  final String? assetsPath;
  final EdgeInsetsGeometry? margin;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: .all(.circular(4)),
        border: .all(color: Color(0xffC3C6D1)),
      ),
      child: Material(
        type: .transparency,
        child: InkWell(
          borderRadius: .all(.circular(4)),
          onTap: onTap,
          child: Container(
            padding: .symmetric(vertical: 12, horizontal: 20),
            child: Row(
              mainAxisAlignment: .center,
              children: [
                (assetsPath ?? '').isEmpty
                    ? const SizedBox()
                    : Container(
                        margin: .only(right: 12),
                        child: SvgPicture.asset(
                          'assets/$assetsPath',
                          width: 16,
                          height: 16,
                        ),
                      ),
                Text(title, style: TextStyle(fontWeight: FontWeight.w500)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
