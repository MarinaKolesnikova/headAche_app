// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginDTO _$$_LoginDTOFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_LoginDTO',
      json,
      ($checkedConvert) {
        final val = _$_LoginDTO(
          email: $checkedConvert('email', (v) => v as String),
          password: $checkedConvert('password', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_LoginDTOToJson(_$_LoginDTO instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
