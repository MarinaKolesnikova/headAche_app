import 'package:migr_proj/src/symptoms/symptom_model/symptom.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:migr_proj/src/symptoms/skills_group_abstract/skills_group_abstract.dart';

part 'skills_group.freezed.dart';
part 'skills_group.g.dart';

@freezed
class SymptomsGroup extends SkillsGroupAbstract with _$SymptomsGroup {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory SymptomsGroup({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'symptoms') required List<Symptom> skills,
    @JsonKey(name: 'name') required String groupName,
  }) = _SkillsGroup;

  factory SymptomsGroup.mock() => SymptomsGroup(
        id: 0,
        groupName: 'Any',
        skills: [
          Symptom.mock(),
          Symptom.mock(),
        ],
      );

  factory SymptomsGroup.fromJson(Map<String, dynamic> json) => _$SymptomsGroupFromJson(json);
}
