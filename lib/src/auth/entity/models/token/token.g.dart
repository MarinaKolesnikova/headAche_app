// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Token _$$_TokenFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Token',
      json,
      ($checkedConvert) {
        final val = _$_Token(
          accessToken: $checkedConvert('key', (v) => v as String?),
          isTest: $checkedConvert('is_test', (v) => v as bool? ?? false),
        );
        return val;
      },
      fieldKeyMap: const {'accessToken': 'key', 'isTest': 'is_test'},
    );

Map<String, dynamic> _$$_TokenToJson(_$_Token instance) => <String, dynamic>{
      'key': instance.accessToken,
      'is_test': instance.isTest,
    };
