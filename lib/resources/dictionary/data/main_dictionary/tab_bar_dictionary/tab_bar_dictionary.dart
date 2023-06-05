import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_bar_dictionary.freezed.dart';

part 'tab_bar_dictionary.g.dart';

@freezed
class TabBarDictionary with _$TabBarDictionary {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory TabBarDictionary({
    @JsonKey(name: 'home') required String home,
    @JsonKey(name: 'calendar') required String calendar,
    @JsonKey(name: 'advices') required String advices,
    @JsonKey(name: 'predictions') required String predictions,
  }) = _TabBarDictionary;

  factory TabBarDictionary.fromJson(Map<String, dynamic> json) => _$TabBarDictionaryFromJson(json);
}
