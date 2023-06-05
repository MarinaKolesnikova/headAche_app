// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmailDTO _$$_EmailDTOFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_EmailDTO',
      json,
      ($checkedConvert) {
        final val = _$_EmailDTO(
          email: $checkedConvert('email', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_EmailDTOToJson(_$_EmailDTO instance) =>
    <String, dynamic>{
      'email': instance.email,
    };
