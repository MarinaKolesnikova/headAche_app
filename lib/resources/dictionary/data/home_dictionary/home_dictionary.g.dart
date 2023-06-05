// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dictionary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeDictionary _$$_HomeDictionaryFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_HomeDictionary',
      json,
      ($checkedConvert) {
        final val = _$_HomeDictionary(
          date: $checkedConvert('date', (v) => v as String),
          symptoms: $checkedConvert('symptoms', (v) => v as String),
          treatment: $checkedConvert('treatment', (v) => v as String),
          painLevel: $checkedConvert('pain_level', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'painLevel': 'pain_level'},
    );

Map<String, dynamic> _$$_HomeDictionaryToJson(_$_HomeDictionary instance) =>
    <String, dynamic>{
      'date': instance.date,
      'symptoms': instance.symptoms,
      'treatment': instance.treatment,
      'pain_level': instance.painLevel,
    };
