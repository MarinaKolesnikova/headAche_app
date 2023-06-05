import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_dictionary.freezed.dart';

part 'home_dictionary.g.dart';

@freezed
class HomeDictionary with _$HomeDictionary {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory HomeDictionary({
    @JsonKey(name: 'date') required String date,
    @JsonKey(name: 'symptoms') required String symptoms,
    @JsonKey(name: 'treatment') required String treatment,
    @JsonKey(name: 'pain_level') required String painLevel,
  }) = _HomeDictionary;

  factory HomeDictionary.fromJson(Map<String, dynamic> json) => _$HomeDictionaryFromJson(json);
}
