import 'package:auto_route/auto_route.dart';
import 'package:migr_proj/presentation/additional/screen_in_develop.dart';
import 'package:migr_proj/presentation/additional/splash_screen.dart';
import 'package:migr_proj/presentation/authorization/authorization_screen.dart';

import 'package:migr_proj/presentation/home/home_screen.dart';
import 'package:migr_proj/presentation/main/main_screen.dart';
import 'package:migr_proj/resources/app_routes.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashScreen,
      initial: true,
      path: AppRoutes.splashScreen,
    ),
    AutoRoute(
      page: AuthorizationScreen,
      path: AppRoutes.authScreen,
    ),
    AutoRoute(
      page: ScreenInDevelop,
      path: AppRoutes.screenInDevelop,
    ),
    AutoRoute(
      page: HomePageScreen,
      path: AppRoutes.homeScreen,
      children: [
        CustomRoute(
          page: ScreenInDevelop,
          path: AppRoutes.screenInDevelop,
          durationInMilliseconds: 300,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: MainScreen,
          path: AppRoutes.mainScreen,
          durationInMilliseconds: 300,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
