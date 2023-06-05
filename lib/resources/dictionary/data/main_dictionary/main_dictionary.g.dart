// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_dictionary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainDictionary _$$_MainDictionaryFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_MainDictionary',
      json,
      ($checkedConvert) {
        final val = _$_MainDictionary(
          tabBarDictionary: $checkedConvert('tab_bar',
              (v) => TabBarDictionary.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'tabBarDictionary': 'tab_bar'},
    );

Map<String, dynamic> _$$_MainDictionaryToJson(_$_MainDictionary instance) =>
    <String, dynamic>{
      'tab_bar': instance.tabBarDictionary.toJson(),
    };
