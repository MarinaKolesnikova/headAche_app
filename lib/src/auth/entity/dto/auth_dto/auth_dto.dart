import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_dto.freezed.dart';
part 'auth_dto.g.dart';

@freezed
class AuthDTO with _$AuthDTO {
  const AuthDTO._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory AuthDTO({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'userName') required String userName,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'key') String? token,
  }) = _AuthDTO;

  factory AuthDTO.fromJson(Map<String, dynamic> json) => _$AuthDTOFromJson(json);
  factory AuthDTO.mock() {
    return AuthDTO(
      id: 0,
      userName: 'userName',
      email: 'email@gmail.com',
    );
  }
}
