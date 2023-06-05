import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_dto.freezed.dart';
part 'email_dto.g.dart';

@freezed
class EmailDTO with _$EmailDTO {
  const EmailDTO._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory EmailDTO({
    @JsonKey(name: 'email') String? email,
  }) = _EmailDTO;

  factory EmailDTO.fromJson(Map<String, dynamic> json) =>
      _$EmailDTOFromJson(json);

  factory EmailDTO.mock() => EmailDTO(email: 'test');
}
