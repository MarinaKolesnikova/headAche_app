import 'package:migr_proj/src/main/domain/bloc/app_bloc.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:migr_proj/config/modules/injection_config.dart';
import 'package:migr_proj/presentation/pop_up/pop_up_manager.dart';

import 'package:migr_proj/resources/resources.dart';
import 'package:migr_proj/src/auth/domain/bloc/auth_bloc.dart';

import 'package:migr_proj/src/main/domain/bloc/events/init_app_event.dart';

class Application extends StatefulWidget {
  const Application() : super(key: const Key('Application'));

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _router = getIt<AppRouter>();

    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(create: (ctx) => initAppBloc(ctx, _router)),
        BlocProvider<AuthBloc>(create: (ctx) => AuthBloc.byGetIt()),
      ],
      child: BlocBuilder<AppBloc, AppState>(
        buildWhen: (prevState, newState) => prevState != newState,
        builder: (ctx, state) {
          return PopUpManager(
            child: MaterialApp.router(
              locale: state.locale,
              debugShowCheckedModeBanner: false,
              routerDelegate: _router.delegate(
                navigatorObservers: () => [AutoRouteObserver()],
              ),
              routeInformationParser: _router.defaultRouteParser(),
              supportedLocales: dictionaryManager.supportedLocales,
              localizationsDelegates: dictionaryManager.getLocalizationDelegates,
            ),
          );
        },
      ),
    );
  }

  AppBloc initAppBloc(BuildContext context, AppRouter router) {
    final event = InitAppEvent(
      onInitializeComplete: (status) {
        switch (status) {
          case CompleteStatus.hasToken:
            //get User Data Here
            // Go to HomePage
            router.replaceNamed(AppRoutes.homeScreen);

            break;
          case CompleteStatus.none:
            // Go to AuthPage

            router.replaceNamed(AppRoutes.authScreen);
            break;
        }
      },
    );

    return AppBloc.byGetIt()..add(event);
  }
}
