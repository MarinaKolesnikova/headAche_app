// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../presentation/additional/screen_in_develop.dart' as _i3;
import '../presentation/additional/splash_screen.dart' as _i1;
import '../presentation/authorization/authorization_screen.dart' as _i2;
import '../presentation/home/home_screen.dart' as _i4;
import '../presentation/main/main_screen.dart' as _i5;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    AuthorizationScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AuthorizationScreen());
    },
    ScreenInDevelopRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.ScreenInDevelop(),
          transitionsBuilder: _i6.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    HomePageScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePageScreen());
    },
    MainScreenRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.MainScreen(),
          transitionsBuilder: _i6.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig('/#redirect',
            path: '/', redirectTo: 'splash_screen', fullMatch: true),
        _i6.RouteConfig(SplashScreenRoute.name, path: 'splash_screen'),
        _i6.RouteConfig(AuthorizationScreenRoute.name, path: 'auth_screen'),
        _i6.RouteConfig(ScreenInDevelopRoute.name, path: 'screen_in_develop'),
        _i6.RouteConfig(HomePageScreenRoute.name,
            path: 'home_screen',
            children: [
              _i6.RouteConfig(ScreenInDevelopRoute.name,
                  path: 'screen_in_develop', parent: HomePageScreenRoute.name),
              _i6.RouteConfig(MainScreenRoute.name,
                  path: 'main_screen', parent: HomePageScreenRoute.name)
            ])
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i6.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(SplashScreenRoute.name, path: 'splash_screen');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.AuthorizationScreen]
class AuthorizationScreenRoute extends _i6.PageRouteInfo<void> {
  const AuthorizationScreenRoute()
      : super(AuthorizationScreenRoute.name, path: 'auth_screen');

  static const String name = 'AuthorizationScreenRoute';
}

/// generated route for
/// [_i3.ScreenInDevelop]
class ScreenInDevelopRoute extends _i6.PageRouteInfo<void> {
  const ScreenInDevelopRoute()
      : super(ScreenInDevelopRoute.name, path: 'screen_in_develop');

  static const String name = 'ScreenInDevelopRoute';
}

/// generated route for
/// [_i4.HomePageScreen]
class HomePageScreenRoute extends _i6.PageRouteInfo<void> {
  const HomePageScreenRoute({List<_i6.PageRouteInfo>? children})
      : super(HomePageScreenRoute.name,
            path: 'home_screen', initialChildren: children);

  static const String name = 'HomePageScreenRoute';
}

/// generated route for
/// [_i5.MainScreen]
class MainScreenRoute extends _i6.PageRouteInfo<void> {
  const MainScreenRoute() : super(MainScreenRoute.name, path: 'main_screen');

  static const String name = 'MainScreenRoute';
}
