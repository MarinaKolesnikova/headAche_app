import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_dto.freezed.dart';
part 'sign_up_dto.g.dart';

@freezed
class SignUpDTO with _$SignUpDTO {
  const SignUpDTO._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory SignUpDTO({
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'userName') required String userName,
    @JsonKey(name: 'password') required String password,
  }) = _SignUpDTO;

  factory SignUpDTO.fromJson(Map<String, dynamic> json) => _$SignUpDTOFromJson(json);
}
