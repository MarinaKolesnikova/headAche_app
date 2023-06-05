import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:migr_proj/resources/dictionary/data/main_dictionary/tab_bar_dictionary/tab_bar_dictionary.dart';

export 'tab_bar_dictionary/tab_bar_dictionary.dart';

part 'main_dictionary.freezed.dart';

part 'main_dictionary.g.dart';

@freezed
class MainDictionary with _$MainDictionary {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory MainDictionary({
    @JsonKey(name: 'tab_bar') required TabBarDictionary tabBarDictionary,
  }) = _MainDictionary;

  factory MainDictionary.fromJson(Map<String, dynamic> json) => _$MainDictionaryFromJson(json);
}
