import 'package:migr_proj/presentation/home/widgets/light_tab_bar.dart';
import 'package:migr_proj/resources/resources.dart';
import 'package:migr_proj/src/main/domain/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:migr_proj/config/modules/injection_config.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (appContext, appState) {
        return AutoTabsScaffold(
          backgroundColor: LightColors.backgroundColor,
          routes: [
            MainScreenRoute(),
            ScreenInDevelopRoute(),
            ScreenInDevelopRoute(),
            ScreenInDevelopRoute(),
          ],
          extendBody: true,
          bottomNavigationBuilder: (_, tabsRouter) {
            return LightTabBar(tabsRouter: tabsRouter);
          },
        );
      },
    );
  }
}
