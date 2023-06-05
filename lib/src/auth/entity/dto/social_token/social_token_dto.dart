import 'package:migr_proj/src/auth/entity/models/social_token/social_token.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_token_dto.freezed.dart';

part 'social_token_dto.g.dart';

@freezed
class SocialTokenDTO with _$SocialTokenDTO {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory SocialTokenDTO({@JsonKey(name: 'access_token') required String accessToken}) = _SocialTokenDTO;

  factory SocialTokenDTO.fromJson(Map<String, dynamic> json) => _$SocialTokenDTOFromJson(json);

  factory SocialTokenDTO.fromModel(SocialToken model) => SocialTokenDTO(accessToken: model.accessToken);
}
