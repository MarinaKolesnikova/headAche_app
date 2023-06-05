import 'package:migr_proj/presentation/shared/widgets/search_field/search_widget.dart';
import 'package:flutter/material.dart';

class SearchSliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  const SearchSliverHeaderDelegate();

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Center(child: SearchWidget());
  }

  @override
  double get maxExtent => 100;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
