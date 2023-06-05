import 'package:dio/dio.dart';
import 'package:migr_proj/config/app_config.dart';
import 'package:migr_proj/config/modules/dio_module_config.dart';
import 'package:migr_proj/presentation/messages/scaffold_messanger.dart';
import 'package:migr_proj/src/auth/data/api/auth_api.dart';
import 'package:migr_proj/src/auth/entity/dto/email_dto/email_dto.dart';
import 'package:migr_proj/src/auth/entity/dto/login_dto/login_dto.dart';
import 'package:migr_proj/src/auth/entity/dto/sign_up_dto/sign_up_dto.dart';
import 'package:migr_proj/src/auth/entity/dto/social_token/social_token_dto.dart';
import 'package:migr_proj/src/auth/entity/models/social_token/social_token.dart';
import 'package:migr_proj/src/auth/entity/models/token/token.dart';
import 'package:migr_proj/src/shared/interfaces/i_base_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthRepositoryUnAuthorized extends IBaseRepository<AuthApi> {
  AuthRepositoryUnAuthorized(
    @Named(unauthorized) Dio dio,
    this.config,
  ) : super(AuthApi(dio, baseUrl: config.baseUrl));

  final AppConfig config;

  Future<User?> login(LoginDTO body) async {
    try {
      final _auth = FirebaseAuth.instance;
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: body.email,
        password: body.password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        InfoMessages.accountExistsMessage();
      } else if (e.code == 'invalid-credential') {
        InfoMessages.wrongCredentialsMessage();
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<User?> signup(SignUpDTO body) async {
    try {
      final _auth = FirebaseAuth.instance;
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: body.email,
        password: body.password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        InfoMessages.accountExistsMessage();
      } else if (e.code == 'invalid-credential') {
        InfoMessages.wrongCredentialsMessage();
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future resetPassword(EmailDTO body) async => await api.resetPassword(body, config.baseUrl);
  Future<User?> loginService(AuthCredential credential) async {
    final _auth = FirebaseAuth.instance;
    try {
      final UserCredential userCredential = await _auth.signInWithCredential(credential);

      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        InfoMessages.accountExistsMessage();
      } else if (e.code == 'invalid-credential') {
        InfoMessages.wrongCredentialsMessage();
      }
    } catch (e) {
      // handle the error here
    }
    return null;
  }

  Future<Token?> loginApple(SocialToken socialToken) async {
    return await api.loginApple(SocialTokenDTO.fromModel(socialToken));
  }
}
