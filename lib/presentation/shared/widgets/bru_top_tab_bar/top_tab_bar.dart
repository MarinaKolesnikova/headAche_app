import 'package:migr_proj/presentation/shared/mixins/fade_animation_mixin.dart';
import 'package:migr_proj/presentation/shared/widgets/bru_top_tab_bar/delegate.dart';
import 'package:migr_proj/presentation/shared/widget_interfaces/animation_state.dart';
import 'package:migr_proj/presentation/shared/widgets/bru_top_tab_bar/models/tab_bar_model.dart';
import 'package:migr_proj/presentation/shared/widgets/bru_top_tab_bar/top_tab_bar_mixin.dart';
import 'package:flutter/material.dart';

class TopTabBar extends StatefulWidget {
  const TopTabBar({
    required this.elements,
    this.header,
    Key? key,
    this.isSliver = false,
  }) : super(key: key);

  final bool isSliver;
  final Widget? header;
  final List<TabBarModel> elements;

  @override
  _TopTabBarState createState() => _TopTabBarState();
}

class _TopTabBarState extends AnimationState<TopTabBar> with FadeAnimationMixin, TopTabBarMixin {
  @override
  Widget build(BuildContext context) {
    if (widget.isSliver) return buildWidgetAsSliver(header: widget.header);

    return buildSimpleWidget(header: widget.header);
  }

  Widget getCurrentSubPageWidget() {
    return FadeTransition(
      opacity: fadeAnimation,
      child: elements[currentIndex].page,
    );
  }

  Widget buildSimpleWidget({Widget? header}) {
    return Column(
      children: [
        if (header != null) header,
        tabBar(),
        Flexible(child: getCurrentSubPageWidget()),
      ],
    );
  }

  Widget buildWidgetAsSliver({Widget? header}) {
    return CustomScrollView(
      slivers: [
        if (header != null) header,
        pinnedTabBar(),
        SliverToBoxAdapter(child: getCurrentSubPageWidget()),
      ],
    );
  }

  Widget pinnedTabBar() {
    return SliverPersistentHeader(
      pinned: true,
      delegate: Delegate(child: tabBar()),
    );
  }
}
