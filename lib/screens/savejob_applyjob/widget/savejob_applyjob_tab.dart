import 'package:flutter/material.dart';

class SaveJobApplyJobTab extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;
  final bool space;
  SaveJobApplyJobTab(this.tabBar, {this.space = false});

  @override
  Widget build(Object context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[200]!,
          ),
        ),
      ),
      padding: EdgeInsets.only(
        left: 15,
        right: space ? 120 : 15,
      ),
      child: tabBar,
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
