import 'package:migr_proj/config/modules/injection_config.dart';
import 'package:migr_proj/presentation/shared/widgets/tab_bar/models/tab_bar_model.dart';

mixin BottomTabBarMixin {
  int getTabIndex(
    List<BottomTabBarModel> tabs,
    BottomTabBarModel tab,
  ) {
    return tabs.indexWhere((element) => element == tab);
  }

  bool isTabSelected(
    List<BottomTabBarModel> tabs,
    BottomTabBarModel tab,
    TabsRouter tabsRouter,
  ) {
    final isSelectedIndex = tabsRouter.activeIndex == getTabIndex(tabs, tab);

    return isSelectedIndex;
  }
}
