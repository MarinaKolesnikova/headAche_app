import 'dart:async';

import 'package:flutter/material.dart';
import 'package:migr_proj/src/shared/interfaces/i_bloc.dart';

import '../auth_bloc.dart';

class LogoutEvent extends IBlocEvent<AuthState> {
  const LogoutEvent({
    required this.onLogoutCompleted,
  });

  final VoidCallback onLogoutCompleted;

  @override
  Stream<AuthState> action(covariant AuthBloc bloc) async* {
    await bloc.tokenStorage.delete().whenComplete(() => onLogoutCompleted());
  }
}
