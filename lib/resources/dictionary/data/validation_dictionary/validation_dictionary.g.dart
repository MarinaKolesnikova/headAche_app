// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_dictionary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ValidationDictionary _$$_ValidationDictionaryFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ValidationDictionary',
      json,
      ($checkedConvert) {
        final val = _$_ValidationDictionary(
          emailValidationError:
              $checkedConvert('wrong_email_format', (v) => v as String),
          cyrillicOnly: $checkedConvert('cyrillic_only', (v) => v as String),
          numbersOnly: $checkedConvert('numbers_only', (v) => v as String),
          wrongPhoneFormat:
              $checkedConvert('wrong_phone_format', (v) => v as String),
          passwordsNotEqual:
              $checkedConvert('passwords_not_equal', (v) => v as String),
          wrongPasswordFormat:
              $checkedConvert('wrong_password_format', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'emailValidationError': 'wrong_email_format',
        'cyrillicOnly': 'cyrillic_only',
        'numbersOnly': 'numbers_only',
        'wrongPhoneFormat': 'wrong_phone_format',
        'passwordsNotEqual': 'passwords_not_equal',
        'wrongPasswordFormat': 'wrong_password_format'
      },
    );

Map<String, dynamic> _$$_ValidationDictionaryToJson(
        _$_ValidationDictionary instance) =>
    <String, dynamic>{
      'wrong_email_format': instance.emailValidationError,
      'cyrillic_only': instance.cyrillicOnly,
      'numbers_only': instance.numbersOnly,
      'wrong_phone_format': instance.wrongPhoneFormat,
      'passwords_not_equal': instance.passwordsNotEqual,
      'wrong_password_format': instance.wrongPasswordFormat,
    };
