// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skills_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SkillsGroup _$$_SkillsGroupFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_SkillsGroup',
      json,
      ($checkedConvert) {
        final val = _$_SkillsGroup(
          id: $checkedConvert('id', (v) => v as int),
          skills: $checkedConvert(
              'symptoms',
              (v) => (v as List<dynamic>)
                  .map((e) => Symptom.fromJson(e as Map<String, dynamic>))
                  .toList()),
          groupName: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'skills': 'symptoms', 'groupName': 'name'},
    );

Map<String, dynamic> _$$_SkillsGroupToJson(_$_SkillsGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symptoms': instance.skills.map((e) => e.toJson()).toList(),
      'name': instance.groupName,
    };
