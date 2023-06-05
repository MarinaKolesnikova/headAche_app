import 'package:migr_proj/src/symptoms/symptom_model/symptom.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attack_model.freezed.dart';
part 'attack_model.g.dart';

@freezed
class AttackModel with _$AttackModel {
  const AttackModel._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory AttackModel({
    @JsonKey(name: 'date') required DateTime date,
    @JsonKey(name: 'duration') required Duration duration,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'symptoms_list') List<Symptom>? symptoms,
    @JsonKey(name: 'treatment_list') List<Symptom>? treatment,
  }) = _AttackModel;

  factory AttackModel.mock() {
    return AttackModel(
      date: DateTime.now(),
      duration: Duration(hours: 1),
      description: '_',
      symptoms: [
        Symptom.mock(),
        Symptom.mock(),
      ],
      treatment: [
        Symptom.mock(),
        Symptom.mock(),
      ],
    );
  }
}
