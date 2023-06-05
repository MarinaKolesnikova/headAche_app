import 'dart:async';

import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:migr_proj/config/modules/injection_config.dart';
import 'package:migr_proj/resources/resources.dart';

import 'package:migr_proj/src/auth/data/storages/token_storage.dart';
import 'package:migr_proj/src/main/data/services/app_service.dart';
import 'package:migr_proj/src/main/data/settings_storage.dart';
import 'package:migr_proj/src/shared/interfaces/i_bloc.dart';
import 'package:migr_proj/src/shared/interfaces/i_storage.dart';

export './events/all.dart';
export 'package:provider/src/provider.dart';

part 'app_event.dart';

part 'app_state.dart';

part 'app_bloc.freezed.dart';

@singleton
class AppBloc extends IBloc<AppState, AppEvent> {
  AppBloc({
    required this.storage,
    required this.settingStorage,
    required this.tokenStorage,
    required this.dictionaryManager,
    required this.appService,
  }) : super(AppState.initial());

  factory AppBloc.byGetIt({GetIt? testGetIt}) {
    return AppBloc(
      storage: (testGetIt ?? getIt)<IStorage>(),
      settingStorage: (testGetIt ?? getIt)<SettingStorage>(),
      tokenStorage: (testGetIt ?? getIt)<TokenStorage>(),
      dictionaryManager: (testGetIt ?? getIt)<DictionaryManager>(),
      appService: (testGetIt ?? getIt)<AppService>(),
    );
  }

  final IStorage storage;
  final SettingStorage settingStorage;
  final TokenStorage tokenStorage;
  final DictionaryManager dictionaryManager;
  final AppService appService;

  Locale? get getLocale => state.locale;
}
