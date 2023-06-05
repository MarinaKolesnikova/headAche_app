// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portal_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PortalError _$$_PortalErrorFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_PortalError',
      json,
      ($checkedConvert) {
        final val = _$_PortalError(
          errorMessage: $checkedConvert('detail', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'errorMessage': 'detail'},
    );

Map<String, dynamic> _$$_PortalErrorToJson(_$_PortalError instance) =>
    <String, dynamic>{
      'detail': instance.errorMessage,
    };
