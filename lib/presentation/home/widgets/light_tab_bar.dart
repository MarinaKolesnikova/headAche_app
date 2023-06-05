import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:migr_proj/presentation/shared/widgets/tab_bar/light_tab_bar.dart';
import 'package:migr_proj/presentation/shared/widgets/tab_bar/models/tab_bar_model.dart';

import 'package:migr_proj/resources/resources.dart';

class LightTabBar extends StatelessWidget {
  const LightTabBar({required this.tabsRouter, Key? key}) : super(key: key);
  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return CustomBottomBar(
      tabsRouter: tabsRouter,
      tabs: getTabList(),
    );
  }

  static List<BottomTabBarModel> getTabList() {
    final TabBarDictionary bottomBarDictionary = dictionaryManager.getSelectedData.main.tabBarDictionary;
    return [
      BottomTabBarModel(
        iconPath: SvgPathPicker.home,
        activeIconPath: SvgPathPicker.home,
        text: bottomBarDictionary.home,
      ),
      BottomTabBarModel(
        iconPath: SvgPathPicker.calendar,
        activeIconPath: SvgPathPicker.calendar,
        text: bottomBarDictionary.calendar,
      ),
      BottomTabBarModel(
        iconPath: SvgPathPicker.advices,
        activeIconPath: SvgPathPicker.advices,
        text: bottomBarDictionary.advices,
      ),
      BottomTabBarModel(
        iconPath: SvgPathPicker.info,
        activeIconPath: SvgPathPicker.info,
        text: bottomBarDictionary.predictions,
      ),
    ];
  }
}
