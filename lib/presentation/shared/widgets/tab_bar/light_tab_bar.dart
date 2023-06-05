import 'dart:io';

import 'package:migr_proj/resources/colors/light_colors.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'package:migr_proj/presentation/shared/widgets/tab_bar/light_tab_bar_item.dart';

import 'package:migr_proj/presentation/shared/widgets/tab_bar/models/tab_bar_model.dart';
import 'package:migr_proj/presentation/shared/widgets/tab_bar/mixins/bottom_tab_bar_mixin.dart';

class CustomBottomBar extends StatelessWidget with BottomTabBarMixin {
  const CustomBottomBar({
    required this.tabs,
    required this.tabsRouter,
    this.iconSize,
    this.fontSize,
    this.barHeight,
    Key? key,
  }) : super(key: key);

  final double? iconSize;
  final double? fontSize;
  final double? barHeight;
  final TabsRouter tabsRouter;
  final List<BottomTabBarModel> tabs;

  double get height => barHeight ?? (Platform.isIOS ? 90.0 : 70.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: LightColors.shadowColor.withOpacity(0.9),
            blurRadius: 10.0,
            spreadRadius: 10.0,
          ),
        ],
      ),
      child: Container(
        padding: getPlatformPadding(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
        ),
        child: SizedBox(
          height: height,
          child: Row(
            children: tabs.map<Widget>((tab) {
              return CustomBottomBarItem(
                tabData: tab,
                onTap: onTabTap,
                iconSize: iconSize,
                fontSize: fontSize,
                isSelected: isTabSelected(tabs, tab, tabsRouter),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  void onTabTap(BottomTabBarModel tab) => tabsRouter.setActiveIndex(getTabIndex(tabs, tab));

  EdgeInsetsGeometry getPlatformPadding(BuildContext context) {
    if (Platform.isAndroid) {
      return EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom / 2);
    }
    return EdgeInsets.zero;
  }
}
