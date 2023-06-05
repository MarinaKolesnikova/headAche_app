import 'dart:async';

import 'package:dio/dio.dart';
import 'package:migr_proj/src/auth/data/repositories/auth_repository_unauthorized.dart';
import 'package:migr_proj/src/auth/data/services/auth_service.dart';
import 'package:migr_proj/src/auth/entity/dto/auth_dto/auth_dto.dart';
import 'package:migr_proj/src/auth/entity/dto/email_dto/email_dto.dart';
import 'package:migr_proj/src/auth/entity/dto/login_dto/login_dto.dart';
import 'package:migr_proj/src/auth/entity/dto/sign_up_dto/sign_up_dto.dart';

import 'package:migr_proj/src/shared/entities/models/email_error/email_error.dart';
import 'package:migr_proj/src/shared/entities/models/portal_error.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServiceImpl implements AuthService {
  const AuthServiceImpl(this._authRepo);

  final AuthRepositoryUnAuthorized _authRepo;

  @override
  Future<User?> login(
    LoginDTO body, {
    required bool isTest,
    Function(String?)? onError,
  }) async {
    try {
      return _authRepo.login(body);
    } on DioError catch (e) {
      if (onError != null && e.response != null) {
        final PortalError error = PortalError.fromJson(e.response!.data);
        onError(error.errorMessage);
      }
    }
    return null;
  }

  @override
  Future<bool?> resetPassword(
    EmailDTO body, {
    required bool isTest,
    Function(String?)? onError,
  }) async {
    try {
      await _authRepo.resetPassword(body);

      onError?.call(null);

      return true;
    } on DioError catch (e) {
      if (onError != null && e.response != null) {
        final EmailError error = EmailError.fromJson(e.response!.data);
        String errorText = '';

        for (String item in error.errorMessage!) {
          errorText += item;
        }
        onError(errorText);
        return false;
      }
    }
    return null;
  }

  @override
  Future<User?> signup(
    SignUpDTO body, {
    Function(String?)? onError,
  }) async {
    try {
      return _authRepo.signup(body);
    } on DioError catch (e) {
      if (onError != null && e.response != null) {
        final PortalError error = PortalError.fromJson(e.response!.data);
        onError(error.errorMessage);
      }
    }
    return null;
  }

  @override
  Future<User?> loginGoogle() async {
    final account = await GoogleSignIn().signIn();
    if (account == null) return null;
    final GoogleSignInAuthentication googleSignInAuthentication = await account.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );
    return await _authRepo.loginService(credential);
  }

  @override
  Future<User?> loginFacebook() async {
    final LoginResult authentication = await FacebookAuth.instance.login();
    if (authentication.accessToken != null) return null;
    final AuthCredential facebookCredential = FacebookAuthProvider.credential(authentication.accessToken!.token);

    return await _authRepo.loginService(facebookCredential);
  }
}
