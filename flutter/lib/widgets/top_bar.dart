import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopBar extends StatelessWidget{
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(horizontal: 32, vertical: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffF8F9FF),
        border: Border(bottom: BorderSide(color: Color(0xffC3C6D1))),
      ),
      child: Row(
        mainAxisAlignment: .end,
        spacing: 16,
        children: [
          Text(
            'Docs',
            style: TextStyle(fontSize: 14, fontWeight: .w500),
          ),
          Container(
            alignment: .center,
            decoration: BoxDecoration(
              color: Color(0xffE5EEFF),
              borderRadius: .all(.circular(12)),
            ),
            child: Material(
              type: .transparency,
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {},
                child: Container(
                  padding: .symmetric(vertical: 6, horizontal: 16),
                  child: Text(
                    'Invite Team',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: .w500,
                      color: Color(0xff001E40),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: .only(left: 8),
            height: 20,
            width: 1,
            decoration: BoxDecoration(color: Color(0xffD9D9D9)),
          ),
          SvgPicture.asset('assets/bell.svg'),
          SvgPicture.asset('assets/history.svg'),
          SvgPicture.asset('assets/profile.svg'),
        ],
      ),
    );
  }
}