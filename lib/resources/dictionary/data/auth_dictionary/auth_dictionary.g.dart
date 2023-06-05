// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dictionary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthDictionary _$$_AuthDictionaryFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_AuthDictionary',
      json,
      ($checkedConvert) {
        final val = _$_AuthDictionary(
          login: $checkedConvert('log_in', (v) => v as String),
          loginWith: $checkedConvert('log_in_with', (v) => v as String),
          signUp: $checkedConvert('sign_up', (v) => v as String),
          signUpWith: $checkedConvert('sign_up_with', (v) => v as String),
          userName: $checkedConvert('user_name', (v) => v as String),
          password: $checkedConvert('password', (v) => v as String),
          confirmPassword:
              $checkedConvert('confirm_password', (v) => v as String),
          enter: $checkedConvert('enter', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          send: $checkedConvert('send', (v) => v as String),
          ok: $checkedConvert('ok', (v) => v as String),
          linkWasSend: $checkedConvert('link_was_send', (v) => v as String),
          linkWouldBeSend:
              $checkedConvert('link_would_be_send', (v) => v as String),
          mandatoryFields:
              $checkedConvert('mandatory_fields', (v) => v as String),
          recovery: $checkedConvert('recovery', (v) => v as String),
          recoveryLabel: $checkedConvert('recovery_label', (v) => v as String),
          socialNetworks:
              $checkedConvert('social_networks', (v) => v as String),
          google: $checkedConvert('google', (v) => v as String),
          facebook: $checkedConvert('facebook', (v) => v as String),
          apple: $checkedConvert('apple', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'login': 'log_in',
        'loginWith': 'log_in_with',
        'signUp': 'sign_up',
        'signUpWith': 'sign_up_with',
        'userName': 'user_name',
        'confirmPassword': 'confirm_password',
        'linkWasSend': 'link_was_send',
        'linkWouldBeSend': 'link_would_be_send',
        'mandatoryFields': 'mandatory_fields',
        'recoveryLabel': 'recovery_label',
        'socialNetworks': 'social_networks'
      },
    );

Map<String, dynamic> _$$_AuthDictionaryToJson(_$_AuthDictionary instance) =>
    <String, dynamic>{
      'log_in': instance.login,
      'log_in_with': instance.loginWith,
      'sign_up': instance.signUp,
      'sign_up_with': instance.signUpWith,
      'user_name': instance.userName,
      'password': instance.password,
      'confirm_password': instance.confirmPassword,
      'enter': instance.enter,
      'email': instance.email,
      'send': instance.send,
      'ok': instance.ok,
      'link_was_send': instance.linkWasSend,
      'link_would_be_send': instance.linkWouldBeSend,
      'mandatory_fields': instance.mandatoryFields,
      'recovery': instance.recovery,
      'recovery_label': instance.recoveryLabel,
      'social_networks': instance.socialNetworks,
      'google': instance.google,
      'facebook': instance.facebook,
      'apple': instance.apple,
    };
