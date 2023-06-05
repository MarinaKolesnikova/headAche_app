import 'package:flutter/material.dart';

class Delegate extends SliverPersistentHeaderDelegate {
const Delegate({required this.child, this.maxExt=50.0,this.minExt=50.0, });
final Widget child;
final double minExt;
final double maxExt;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => maxExt;

  @override
  double get minExtent => minExt;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
