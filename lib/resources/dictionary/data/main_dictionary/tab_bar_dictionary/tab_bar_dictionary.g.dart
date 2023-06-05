// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab_bar_dictionary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TabBarDictionary _$$_TabBarDictionaryFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_TabBarDictionary',
      json,
      ($checkedConvert) {
        final val = _$_TabBarDictionary(
          home: $checkedConvert('home', (v) => v as String),
          calendar: $checkedConvert('calendar', (v) => v as String),
          advices: $checkedConvert('advices', (v) => v as String),
          predictions: $checkedConvert('predictions', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_TabBarDictionaryToJson(_$_TabBarDictionary instance) =>
    <String, dynamic>{
      'home': instance.home,
      'calendar': instance.calendar,
      'advices': instance.advices,
      'predictions': instance.predictions,
    };
