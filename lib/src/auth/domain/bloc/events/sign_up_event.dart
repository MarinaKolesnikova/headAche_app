import 'dart:async';

import 'package:migr_proj/src/auth/entity/dto/sign_up_dto/sign_up_dto.dart';
import 'package:migr_proj/src/auth/entity/models/token/token.dart';
import 'package:migr_proj/src/shared/interfaces/i_bloc.dart';
import 'package:flutter/material.dart';

import '../auth_bloc.dart';

class SignUpEvent extends IBlocEvent<AuthState> {
  const SignUpEvent({
    required this.name,
    required this.email,
    required this.password,
    required this.confirmPassword,
    this.onComplete,
  });

  final String name;
  final String email;
  final String password;
  final String confirmPassword;
  final VoidCallback? onComplete;

  @override
  Stream<AuthState> action(covariant AuthBloc bloc) async* {
    yield bloc.state.copyWith(isLoading: true);

    final userData = await bloc.authService.signup(
      SignUpDTO(
        userName: name,
        email: email,
        password: password,
      ),
    );

    yield bloc.state.copyWith(isLoading: false);

    if (userData != null) {
      onComplete?.call();
    }
  }
}
