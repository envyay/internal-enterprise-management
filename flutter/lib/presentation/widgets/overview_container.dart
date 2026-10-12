import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class OverviewContainer extends StatelessWidget {
  const OverviewContainer({
    super.key,
    required this.title,
    this.child,
    this.icon,
    this.onTap,
    this.tabs,
    this.tabViews,
    this.onTabChanged,
  }) : assert(
  (tabs == null && tabViews == null && child != null) ||
      (tabs != null && tabViews != null && tabs.length == tabViews.length),
  'Truyền child, HOẶC tabs + tabViews có cùng độ dài',
  );

  final String title;
  final Widget? child;
  final SvgGenImage? icon;
  final void Function()? onTap;

  /// Tiêu đề các tab (vd: [Tab(text: 'All'), Tab(text: 'PDF')])
  final List<Widget>? tabs;

  /// Nội dung tương ứng từng tab
  final List<Widget>? tabViews;

  final ValueChanged<int>? onTabChanged;

  bool get _hasTabs => tabs != null && tabs!.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    final content = Card(
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
          if (_hasTabs)
            TabBar(
              tabs: tabs!,
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              onTap: onTabChanged,
              labelColor: const Color(0xff0B1C30),
              unselectedLabelColor: const Color(0xff43474F),
              indicatorColor: const Color(0xff0B1C30),
              dividerColor: const Color(0xffC3C6D1),
            ),
          Expanded(
            child: _hasTabs ? TabBarView(children: tabViews!) : child!,
          ),
        ],
      ),
    );

    return _hasTabs
        ? DefaultTabController(length: tabs!.length, child: content)
        : content;
  }
}