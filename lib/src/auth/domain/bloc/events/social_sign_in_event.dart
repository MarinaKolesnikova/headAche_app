import 'dart:async';

import 'package:dio/dio.dart';
import 'package:migr_proj/src/auth/entity/models/token/token.dart';
import 'package:migr_proj/src/shared/interfaces/i_bloc_event.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../auth_bloc.dart';

enum SignInType {
  google,
  facebook,

  email,
}

class SocialSignInEvent extends IBlocEvent<AuthState> {
  const SocialSignInEvent({
    required this.signInType,
    required this.onEventComplete,
  });

  final SignInType signInType;
  final VoidCallback onEventComplete;

  @override
  Stream<AuthState> action(covariant AuthBloc bloc) async* {
    yield bloc.state.copyWith(isLoading: true);

    final user = await _signIn(bloc);

    yield bloc.state.copyWith(isLoading: false);

    if (user != null) {
      onEventComplete();
    }
  }

  Future<User?> _signIn(AuthBloc bloc) async {
    switch (signInType) {
      case SignInType.google:
        return await bloc.authService.loginGoogle();
      case SignInType.facebook:
        return await bloc.authService.loginFacebook();

      case SignInType.email:
        break;
    }
    return null;
  }
}
