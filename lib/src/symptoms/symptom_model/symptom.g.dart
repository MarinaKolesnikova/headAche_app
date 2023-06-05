// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Symptom _$$_SymptomFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Symptom',
      json,
      ($checkedConvert) {
        final val = _$_Symptom(
          id: $checkedConvert('id', (v) => v as int?),
          name: $checkedConvert('name', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_SymptomToJson(_$_Symptom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
