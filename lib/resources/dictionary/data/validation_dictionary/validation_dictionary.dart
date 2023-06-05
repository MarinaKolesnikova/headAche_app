import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_dictionary.freezed.dart';

part 'validation_dictionary.g.dart';

@freezed
class ValidationDictionary with _$ValidationDictionary {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory ValidationDictionary({
    @JsonKey(name: 'wrong_email_format') required String emailValidationError,
    @JsonKey(name: 'cyrillic_only') required String cyrillicOnly,
    @JsonKey(name: 'numbers_only') required String numbersOnly,
    @JsonKey(name: 'wrong_phone_format') required String wrongPhoneFormat,
    @JsonKey(name: 'passwords_not_equal') required String passwordsNotEqual,
    @JsonKey(name: 'wrong_password_format') required String wrongPasswordFormat,
  }) = _ValidationDictionary;

  factory ValidationDictionary.fromJson(Map<String, dynamic> json) => _$ValidationDictionaryFromJson(json);
}
