import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_dictionary.freezed.dart';

part 'auth_dictionary.g.dart';

@freezed
class AuthDictionary with _$AuthDictionary {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory AuthDictionary({
    @JsonKey(name: 'log_in') required String login,
    @JsonKey(name: 'log_in_with') required String loginWith,
    @JsonKey(name: 'sign_up') required String signUp,
    @JsonKey(name: 'sign_up_with') required String signUpWith,
    @JsonKey(name: 'user_name') required String userName,
    @JsonKey(name: 'password') required String password,
    @JsonKey(name: 'confirm_password') required String confirmPassword,
    @JsonKey(name: 'enter') required String enter,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'send') required String send,
    @JsonKey(name: 'ok') required String ok,
    @JsonKey(name: 'link_was_send') required String linkWasSend,
    @JsonKey(name: 'link_would_be_send') required String linkWouldBeSend,
    @JsonKey(name: 'mandatory_fields') required String mandatoryFields,
    @JsonKey(name: 'recovery') required String recovery,
    @JsonKey(name: 'recovery_label') required String recoveryLabel,
    @JsonKey(name: 'social_networks') required String socialNetworks,
    @JsonKey(name: 'google') required String google,
    @JsonKey(name: 'facebook') required String facebook,
    @JsonKey(name: 'apple') required String apple,
  }) = _AuthDictionary;

  factory AuthDictionary.fromJson(Map<String, dynamic> json) => _$AuthDictionaryFromJson(json);
}
