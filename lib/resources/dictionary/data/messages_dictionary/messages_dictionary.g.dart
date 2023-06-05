// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages_dictionary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessagesDictionary _$$_MessagesDictionaryFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_MessagesDictionary',
      json,
      ($checkedConvert) {
        final val = _$_MessagesDictionary(
          accountExists: $checkedConvert('account_exists', (v) => v as String),
          wrongCredentials:
              $checkedConvert('wrong_credentials', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'accountExists': 'account_exists',
        'wrongCredentials': 'wrong_credentials'
      },
    );

Map<String, dynamic> _$$_MessagesDictionaryToJson(
        _$_MessagesDictionary instance) =>
    <String, dynamic>{
      'account_exists': instance.accountExists,
      'wrong_credentials': instance.wrongCredentials,
    };
