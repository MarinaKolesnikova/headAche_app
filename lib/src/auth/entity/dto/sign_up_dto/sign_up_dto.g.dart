// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpDTO _$$_SignUpDTOFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_SignUpDTO',
      json,
      ($checkedConvert) {
        final val = _$_SignUpDTO(
          email: $checkedConvert('email', (v) => v as String),
          userName: $checkedConvert('userName', (v) => v as String),
          password: $checkedConvert('password', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_SignUpDTOToJson(_$_SignUpDTO instance) =>
    <String, dynamic>{
      'email': instance.email,
      'userName': instance.userName,
      'password': instance.password,
    };
