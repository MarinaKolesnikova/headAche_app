import 'dart:async';

import 'package:migr_proj/src/main/domain/bloc/app_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

enum CompleteStatus {
  hasToken,
  none,
}

class InitAppEvent extends AppEvent {
  const InitAppEvent({required this.onInitializeComplete});

  final void Function(CompleteStatus completeStatus) onInitializeComplete;

  @override
  Stream<AppState> action(covariant AppBloc bloc) async* {
    await bloc.storage.init();

    final user = FirebaseAuth.instance.currentUser;
    final settings = await bloc.settingStorage.take();
    if (settings != null) {
      //add here language changes
    }
    try {
      await Future.delayed(const Duration(seconds: 2));
      onInitializeComplete(user != null ? CompleteStatus.hasToken : CompleteStatus.none);

      yield bloc.state.copyWith(
        appLoaded: bloc.state.appLoaded..complete(),
      );
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
