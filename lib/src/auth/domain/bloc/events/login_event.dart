import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:migr_proj/src/auth/entity/dto/login_dto/login_dto.dart';
import 'package:migr_proj/src/auth/entity/models/token/token.dart';
import 'package:migr_proj/src/shared/interfaces/i_bloc.dart';

import '../auth_bloc.dart';

class LoginEvent extends IBlocEvent<AuthState> {
  const LoginEvent({
    required this.email,
    required this.password,
    required this.onLoginCompleted,
    this.onError,
  });

  final String email;
  final String password;
  final VoidCallback? onLoginCompleted;

  final Function(String? errorText)? onError;

  @override
  Stream<AuthState> action(covariant AuthBloc bloc) async* {
    try {

      yield bloc.state.copyWith(isLoading: true);

      final User? user = await bloc.authService.login(
        LoginDTO(email: email, password: password),
        onError: onError,
        isTest: isTest,
      );

      if (user != null) {
        yield bloc.state.copyWith(isLoading: false);

        onLoginCompleted?.call();
      }
    } catch (e) {
      yield bloc.state.copyWith(isLoading: false);
    }
  }
}
