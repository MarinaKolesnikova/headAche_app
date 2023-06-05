import 'package:migr_proj/src/auth/entity/dto/social_token/social_token_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_token.freezed.dart';

@freezed
class SocialToken with _$SocialToken {
  const factory SocialToken({required String accessToken}) = _SocialToken;

  factory SocialToken.fromDTO(SocialTokenDTO dto) => SocialToken(accessToken: dto.accessToken);
}
