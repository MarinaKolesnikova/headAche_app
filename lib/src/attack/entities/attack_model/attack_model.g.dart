// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attack_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttackModel _$$_AttackModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_AttackModel',
      json,
      ($checkedConvert) {
        final val = _$_AttackModel(
          date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
          duration: $checkedConvert(
              'duration', (v) => Duration(microseconds: v as int)),
          description: $checkedConvert('description', (v) => v as String),
          symptoms: $checkedConvert(
              'symptoms_list',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Symptom.fromJson(e as Map<String, dynamic>))
                  .toList()),
          treatment: $checkedConvert(
              'treatment_list',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Symptom.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'symptoms': 'symptoms_list',
        'treatment': 'treatment_list'
      },
    );

Map<String, dynamic> _$$_AttackModelToJson(_$_AttackModel instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'duration': instance.duration.inMicroseconds,
      'description': instance.description,
      'symptoms_list': instance.symptoms?.map((e) => e.toJson()).toList(),
      'treatment_list': instance.treatment?.map((e) => e.toJson()).toList(),
    };
