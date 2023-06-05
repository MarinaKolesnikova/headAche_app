import 'package:migr_proj/presentation/shared/mixins/fade_animation_mixin.dart';
import 'package:flutter/material.dart';
import 'package:migr_proj/presentation/shared/widgets/tab_bar/mixins/bottom_bar_item_mixin.dart';
import 'package:migr_proj/presentation/shared/widgets/tab_bar/models/tab_bar_model.dart';

import 'package:migr_proj/presentation/shared/widget_interfaces/animation_state.dart';

class CustomBottomBarItem extends StatefulWidget {
  const CustomBottomBarItem({
    required this.onTap,
    required this.tabData,
    required this.isSelected,
    this.fontSize,
    this.iconSize,
    Key? key,
  }) : super(key: key);
  final bool isSelected;
  final double? iconSize;
  final double? fontSize;
  final BottomTabBarModel tabData;
  final void Function(BottomTabBarModel) onTap;

  @override
  State<CustomBottomBarItem> createState() => _CustomBottomBarItemState();
}

class _CustomBottomBarItemState extends AnimationState<CustomBottomBarItem> with BottomTabBarItemMixin, FadeAnimationMixin {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTapAnimated,
        child: Container(
          padding: const EdgeInsets.only(top: 15.0),
          decoration: itemDecoration(),
          child: Column(
            children: [
              SizedBox(
                height: iconSize,
                width: iconSize,
                child: getActiveIcon(),
              ),
              FittedBox(
                child: Padding(
                  padding: const EdgeInsets.only(top: 6.0).add(const EdgeInsets.symmetric(horizontal: 4.0)),
                  child: Text(
                    widget.tabData.text,
                    textAlign: TextAlign.center,
                    style: getTextActiveStyle(fadeAnimation),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Duration get animationDuration => Duration(milliseconds: 500);
}
