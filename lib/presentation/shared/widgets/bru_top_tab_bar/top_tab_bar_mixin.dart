import 'package:flutter/material.dart';
import 'package:migr_proj/resources/resources.dart';
import 'package:migr_proj/presentation/shared/widget_interfaces/animation_state.dart';
import 'package:migr_proj/presentation/shared/widgets/bru_top_tab_bar/models/tab_bar_model.dart';
import 'package:migr_proj/presentation/shared/widgets/bru_top_tab_bar/top_tab_bar_item.dart';
import 'package:migr_proj/presentation/shared/widgets/bru_top_tab_bar/top_tab_bar.dart';

mixin TopTabBarMixin<T extends TopTabBar> on AnimationState<T> {
  double? itemWidth;
  int currentIndex = 0;
  bool isAnimationPerform = false;

  late double positionFromLeft;
  late final double screenWidth;
  late Animation<double> positionAnimation;
  late final List<TabBarModel> elements;

  @override
  Duration get animationDuration => Duration(milliseconds: 300);

  @override
  void initState() {
    super.initState();
    elements = widget.elements;
    positionFromLeft = 0.0;

    animationController.forward(from: 0.0);
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        itemWidth = context.size!.width / widget.elements.length;
        positionAnimation = createPositionAnimation(from: 0, to: 0);
        setState(() {});
      },
    );
  }

  int get getIndent {
    if (currentIndex == 0 || currentIndex == elements.length - 1) return 10;

    return 0;
  }

  double get getPosition => positionAnimation.value + getIndent;

  void onTapCallback(int newIndex) {
    isAnimationPerform = true;

    positionAnimation = createPositionAnimation(from: currentIndex, to: newIndex);

    currentIndex = newIndex;

    animationController.forward(from: 0.0);
  }

  Animation<double> createPositionAnimation({
    required int from,
    required int to,
  }) {
    return Tween<double>(begin: from * (itemWidth!), end: to * (itemWidth!)).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.linear,
    ));
  }

  Widget tabBar() {
    final widgets = <Widget>[];

    for (int i = 0; i < widget.elements.length; i++) {
      widgets.add(
        TopTabBarItem(
          element: widget.elements[i],
          onTap: () {
            if (currentIndex != i) onTapCallback(i);
          },
        ),
      );
    }

    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.bottomCenter,
      children: [
        ColoredBox(
          color: LightColors.darkPurpleAccentColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: widgets,
          ),
        ),
        if (itemWidth != null)
          Positioned(
            left: getPosition,
            child: Container(
              height: 3.0,
              width: itemWidth! - 20.0,
              color: LightColors.text,
            ),
          ),
      ],
    );
  }
}
