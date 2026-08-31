import 'package:flutter/material.dart';

import '../../infrastructure/assets/gen/assets.gen.dart';


class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffF8F9FF),
        border: Border(bottom: BorderSide(color: Color(0xffC3C6D1))),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 16,
        children: [
          const Text(
            'Docs',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color(0xffE5EEFF),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                  child: const Text(
                    'Invite Team',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff001E40),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 8),
            height: 20,
            width: 1,
            decoration: const BoxDecoration(color: Color(0xffD9D9D9)),
          ),
          Assets.lib.infrastructure.assets.icons.bell.svg(),
          Assets.lib.infrastructure.assets.icons.history.svg(),
          Assets.lib.infrastructure.assets.icons.profile.svg(),
        ],
      ),
    );
  }
}