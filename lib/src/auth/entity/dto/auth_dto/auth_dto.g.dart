// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthDTO _$$_AuthDTOFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_AuthDTO',
      json,
      ($checkedConvert) {
        final val = _$_AuthDTO(
          id: $checkedConvert('id', (v) => v as int),
          userName: $checkedConvert('userName', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          token: $checkedConvert('key', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'token': 'key'},
    );

Map<String, dynamic> _$$_AuthDTOToJson(_$_AuthDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'email': instance.email,
      'key': instance.token,
    };
