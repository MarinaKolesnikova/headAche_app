import 'dart:async';

import 'package:migr_proj/src/auth/entity/dto/auth_dto/auth_dto.dart';
import 'package:migr_proj/src/auth/entity/dto/email_dto/email_dto.dart';
import 'package:migr_proj/src/auth/entity/dto/login_dto/login_dto.dart';
import 'package:migr_proj/src/auth/entity/dto/sign_up_dto/sign_up_dto.dart';

import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthService {
  Future<User?> login(
    LoginDTO body, {
    required bool isTest,
    Function(String?)? onError,
  });
  Future<bool?> resetPassword(
    EmailDTO body, {
    required bool isTest,
    Function(String?)? onError,
  });

  Future<User?> loginGoogle();
  Future<User?> loginFacebook();

  Future<User?> signup(
    SignUpDTO body, {
    Function(String?)? onError,
  });
}
