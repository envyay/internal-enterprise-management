import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';

class OutlineIconButton extends StatelessWidget {
  const OutlineIconButton({
    super.key,
    required this.title,
    this.prefix,
    this.margin,
    this.onTap,
  });

  final String title;
  final SvgGenImage? prefix;
  final EdgeInsetsGeometry? margin;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: .all(.circular(4)),
        border: .all(color: const Color(0xffC3C6D1)),
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
                (prefix == null)
                    ? const SizedBox()
                    : Container(
                        margin: .only(right: 12),
                        child: prefix!.svg(
                          width: 16,
                          height: 16,
                        ),
                      ),
                Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
