import 'package:freezed_annotation/freezed_annotation.dart';

part 'messages_dictionary.freezed.dart';

part 'messages_dictionary.g.dart';

@freezed
class MessagesDictionary with _$MessagesDictionary {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory MessagesDictionary({
    @JsonKey(name: 'account_exists') required String accountExists,
    @JsonKey(name: 'wrong_credentials') required String wrongCredentials,
  }) = _MessagesDictionary;

  factory MessagesDictionary.fromJson(Map<String, dynamic> json) => _$MessagesDictionaryFromJson(json);
}
