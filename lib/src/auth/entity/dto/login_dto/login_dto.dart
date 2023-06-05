import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_dto.freezed.dart';
part 'login_dto.g.dart';

@freezed
class LoginDTO with _$LoginDTO {
  const LoginDTO._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory LoginDTO({
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'password') required String password,
  }) = _LoginDTO;

  factory LoginDTO.fromJson(Map<String, dynamic> json) => _$LoginDTOFromJson(json);
}
