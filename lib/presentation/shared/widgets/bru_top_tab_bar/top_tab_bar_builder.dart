import 'package:flutter/material.dart';
import 'package:migr_proj/presentation/shared/widgets/bru_top_tab_bar/top_tab_bar.dart';

import 'models/tab_bar_model.dart';

class TopTabBarBuilder {
  static TopTabBar simpleTopBar({
    required List<TabBarModel> elements,
  }) {
    return TopTabBar(elements: elements);
  }

  static TopTabBar sliverTopTabBar({
    required List<TabBarModel> elements,
    Widget? header,
  }) {
    return TopTabBar(
      elements: elements,
      isSliver: true,
      header: header,
    );
  }
}
