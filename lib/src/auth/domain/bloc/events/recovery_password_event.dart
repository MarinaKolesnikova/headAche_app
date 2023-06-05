import 'dart:async';

import 'package:flutter/material.dart';

import 'package:migr_proj/src/auth/entity/dto/email_dto/email_dto.dart';

import 'package:migr_proj/src/shared/interfaces/i_bloc.dart';

import '../auth_bloc.dart';

class RecoveryPasswordEvent extends IBlocEvent<AuthState> {
  const RecoveryPasswordEvent({
    required this.email,
    this.onSuccess,
    this.onError,
  });

  final String email;

  final VoidCallback? onSuccess;
  final Function(String? errorText)? onError;

  @override
  Stream<AuthState> action(covariant AuthBloc bloc) async* {
    yield bloc.state.copyWith(isLoading: true);

    final bool isTest = email == 'test.account@light-it.net';

    final isSuccessfull = await bloc.authService.resetPassword(
      EmailDTO(email: email),
      onError: onError,
      isTest: isTest,
    );

    yield bloc.state.copyWith(isLoading: false);

    if (isSuccessfull == true) {
      onSuccess?.call();
    }
  }
}
