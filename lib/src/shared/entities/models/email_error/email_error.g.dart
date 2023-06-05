// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmailError _$$_EmailErrorFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_EmailError',
      json,
      ($checkedConvert) {
        final val = _$_EmailError(
          errorMessage: $checkedConvert('email',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
      fieldKeyMap: const {'errorMessage': 'email'},
    );

Map<String, dynamic> _$$_EmailErrorToJson(_$_EmailError instance) =>
    <String, dynamic>{
      'email': instance.errorMessage,
    };
