import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';

part 'token.g.dart';

@freezed
class Token with _$Token {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory Token({
    @JsonKey(name: 'key') String? accessToken,
    @Default(false) bool? isTest,
  }) = _Token;

  factory Token.mock() => const Token(accessToken: 'access_token');

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}
