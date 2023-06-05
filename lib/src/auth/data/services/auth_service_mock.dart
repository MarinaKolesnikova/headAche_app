import 'dart:async';

import 'package:migr_proj/src/auth/entity/dto/auth_dto/auth_dto.dart';
import 'package:migr_proj/src/auth/entity/dto/email_dto/email_dto.dart';
import 'package:migr_proj/src/auth/entity/dto/login_dto/login_dto.dart';

import 'package:migr_proj/src/auth/data/services/auth_service.dart';
import 'package:migr_proj/src/auth/entity/dto/sign_up_dto/sign_up_dto.dart';
import 'package:migr_proj/src/auth/entity/models/token/token.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServiceMock implements AuthService {
  const AuthServiceMock();

  @override
  Future<User?> login(
    LoginDTO body, {
    required bool isTest,
    Function(String?)? onError,
  }) async {
    return null;
    // if (body.email == 'correctEmail' && body.password == 'correctPassword') {
    //   return Token.mock();
    // } else if (onError != null) {
    //   onError('Невозможно войти с предоставленными учетными данными');
    // }
  }

  @override
  Future<bool?> resetPassword(
    EmailDTO body, {
    required bool isTest,
    Function(String?)? onError,
  }) async {
    if (body.email == 'correctEmail') {
      return true;
    } else if (onError != null) {
      onError('Невозможно войти с предоставленными учетными данными');
      return false;
    }
    return null;
  }

  @override
  Future<User?> signup(SignUpDTO body, {Function(String?)? onError}) async {
    await Future.delayed(Duration(milliseconds: 100));
    return null;
  }

  @override
  Future<User?> loginApple() async {
    await Future.delayed(Duration(seconds: 2));
    return null;
  }

  @override
  Future<User?> loginFacebook() async {
    await Future.delayed(Duration(seconds: 2));
    return null;
  }

  @override
  Future<User?> loginGoogle() async {
    await Future.delayed(Duration(seconds: 2));
    return null;
  }
}
