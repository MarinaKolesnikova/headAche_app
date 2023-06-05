import 'package:dio/dio.dart';

import 'package:migr_proj/src/auth/entity/dto/email_dto/email_dto.dart';
import 'package:migr_proj/src/auth/entity/dto/login_dto/login_dto.dart';
import 'package:migr_proj/src/auth/entity/dto/social_token/social_token_dto.dart';
import 'package:migr_proj/src/auth/entity/models/token/token.dart';

import 'package:migr_proj/src/shared/interfaces/i_base_api.dart';
import 'package:retrofit/http.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class AuthApi extends IBaseApi {
  factory AuthApi(Dio dio, {String baseUrl}) = _AuthApi;

  @POST('/api/auth/login/')
  Future<Token> login(@Body() LoginDTO body, @Path('url') String url);

  @POST('/api/auth/password/reset/')
  Future resetPassword(@Body() EmailDTO body, @Path('url') String url);

  @POST('/api/auth/social/google')
  Future<Token> loginGoogle(@Body() SocialTokenDTO body);

  @POST('/api/auth/social/facebook')
  Future<Token> loginFacebook(@Body() SocialTokenDTO body);

  @POST('/api/auth/social/apple')
  Future<Token> loginApple(@Body() SocialTokenDTO body);
}
