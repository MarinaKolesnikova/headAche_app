// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Settings _$$_SettingsFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Settings',
      json,
      ($checkedConvert) {
        final val = _$_Settings(
          language: $checkedConvert('language', (v) => v as String? ?? 'en'),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_SettingsToJson(_$_Settings instance) =>
    <String, dynamic>{
      'language': instance.language,
    };
