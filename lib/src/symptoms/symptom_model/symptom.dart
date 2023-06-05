import 'package:freezed_annotation/freezed_annotation.dart';

part 'symptom.freezed.dart';

part 'symptom.g.dart';

@freezed
class Symptom with _$Symptom {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory Symptom({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _Symptom;

  factory Symptom.mock() => const Symptom(
        id: 0,
        name: 'Any',
      );

  factory Symptom.fromJson(Map<String, dynamic> json) => _$SymptomFromJson(json);
}
