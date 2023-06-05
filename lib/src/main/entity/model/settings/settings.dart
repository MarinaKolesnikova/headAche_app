import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';

part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory Settings({
    @JsonKey(name: 'language') @Default('en') String language,
  }) = _Settings;

  factory Settings.mock() => Settings(language: 'en');

  factory Settings.fromJson(Map<String, dynamic> json) => _$SettingsFromJson(json);
}
