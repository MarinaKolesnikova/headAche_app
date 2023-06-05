// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'validation_dictionary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ValidationDictionary _$ValidationDictionaryFromJson(Map<String, dynamic> json) {
  return _ValidationDictionary.fromJson(json);
}

/// @nodoc
class _$ValidationDictionaryTearOff {
  const _$ValidationDictionaryTearOff();

  _ValidationDictionary call(
      {@JsonKey(name: 'wrong_email_format')
          required String emailValidationError,
      @JsonKey(name: 'cyrillic_only')
          required String cyrillicOnly,
      @JsonKey(name: 'numbers_only')
          required String numbersOnly,
      @JsonKey(name: 'wrong_phone_format')
          required String wrongPhoneFormat,
      @JsonKey(name: 'passwords_not_equal')
          required String passwordsNotEqual,
      @JsonKey(name: 'wrong_password_format')
          required String wrongPasswordFormat}) {
    return _ValidationDictionary(
      emailValidationError: emailValidationError,
      cyrillicOnly: cyrillicOnly,
      numbersOnly: numbersOnly,
      wrongPhoneFormat: wrongPhoneFormat,
      passwordsNotEqual: passwordsNotEqual,
      wrongPasswordFormat: wrongPasswordFormat,
    );
  }

  ValidationDictionary fromJson(Map<String, Object?> json) {
    return ValidationDictionary.fromJson(json);
  }
}

/// @nodoc
const $ValidationDictionary = _$ValidationDictionaryTearOff();

/// @nodoc
mixin _$ValidationDictionary {
  @JsonKey(name: 'wrong_email_format')
  String get emailValidationError => throw _privateConstructorUsedError;
  @JsonKey(name: 'cyrillic_only')
  String get cyrillicOnly => throw _privateConstructorUsedError;
  @JsonKey(name: 'numbers_only')
  String get numbersOnly => throw _privateConstructorUsedError;
  @JsonKey(name: 'wrong_phone_format')
  String get wrongPhoneFormat => throw _privateConstructorUsedError;
  @JsonKey(name: 'passwords_not_equal')
  String get passwordsNotEqual => throw _privateConstructorUsedError;
  @JsonKey(name: 'wrong_password_format')
  String get wrongPasswordFormat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidationDictionaryCopyWith<ValidationDictionary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationDictionaryCopyWith<$Res> {
  factory $ValidationDictionaryCopyWith(ValidationDictionary value,
          $Res Function(ValidationDictionary) then) =
      _$ValidationDictionaryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'wrong_email_format') String emailValidationError,
      @JsonKey(name: 'cyrillic_only') String cyrillicOnly,
      @JsonKey(name: 'numbers_only') String numbersOnly,
      @JsonKey(name: 'wrong_phone_format') String wrongPhoneFormat,
      @JsonKey(name: 'passwords_not_equal') String passwordsNotEqual,
      @JsonKey(name: 'wrong_password_format') String wrongPasswordFormat});
}

/// @nodoc
class _$ValidationDictionaryCopyWithImpl<$Res>
    implements $ValidationDictionaryCopyWith<$Res> {
  _$ValidationDictionaryCopyWithImpl(this._value, this._then);

  final ValidationDictionary _value;
  // ignore: unused_field
  final $Res Function(ValidationDictionary) _then;

  @override
  $Res call({
    Object? emailValidationError = freezed,
    Object? cyrillicOnly = freezed,
    Object? numbersOnly = freezed,
    Object? wrongPhoneFormat = freezed,
    Object? passwordsNotEqual = freezed,
    Object? wrongPasswordFormat = freezed,
  }) {
    return _then(_value.copyWith(
      emailValidationError: emailValidationError == freezed
          ? _value.emailValidationError
          : emailValidationError // ignore: cast_nullable_to_non_nullable
              as String,
      cyrillicOnly: cyrillicOnly == freezed
          ? _value.cyrillicOnly
          : cyrillicOnly // ignore: cast_nullable_to_non_nullable
              as String,
      numbersOnly: numbersOnly == freezed
          ? _value.numbersOnly
          : numbersOnly // ignore: cast_nullable_to_non_nullable
              as String,
      wrongPhoneFormat: wrongPhoneFormat == freezed
          ? _value.wrongPhoneFormat
          : wrongPhoneFormat // ignore: cast_nullable_to_non_nullable
              as String,
      passwordsNotEqual: passwordsNotEqual == freezed
          ? _value.passwordsNotEqual
          : passwordsNotEqual // ignore: cast_nullable_to_non_nullable
              as String,
      wrongPasswordFormat: wrongPasswordFormat == freezed
          ? _value.wrongPasswordFormat
          : wrongPasswordFormat // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ValidationDictionaryCopyWith<$Res>
    implements $ValidationDictionaryCopyWith<$Res> {
  factory _$ValidationDictionaryCopyWith(_ValidationDictionary value,
          $Res Function(_ValidationDictionary) then) =
      __$ValidationDictionaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'wrong_email_format') String emailValidationError,
      @JsonKey(name: 'cyrillic_only') String cyrillicOnly,
      @JsonKey(name: 'numbers_only') String numbersOnly,
      @JsonKey(name: 'wrong_phone_format') String wrongPhoneFormat,
      @JsonKey(name: 'passwords_not_equal') String passwordsNotEqual,
      @JsonKey(name: 'wrong_password_format') String wrongPasswordFormat});
}

/// @nodoc
class __$ValidationDictionaryCopyWithImpl<$Res>
    extends _$ValidationDictionaryCopyWithImpl<$Res>
    implements _$ValidationDictionaryCopyWith<$Res> {
  __$ValidationDictionaryCopyWithImpl(
      _ValidationDictionary _value, $Res Function(_ValidationDictionary) _then)
      : super(_value, (v) => _then(v as _ValidationDictionary));

  @override
  _ValidationDictionary get _value => super._value as _ValidationDictionary;

  @override
  $Res call({
    Object? emailValidationError = freezed,
    Object? cyrillicOnly = freezed,
    Object? numbersOnly = freezed,
    Object? wrongPhoneFormat = freezed,
    Object? passwordsNotEqual = freezed,
    Object? wrongPasswordFormat = freezed,
  }) {
    return _then(_ValidationDictionary(
      emailValidationError: emailValidationError == freezed
          ? _value.emailValidationError
          : emailValidationError // ignore: cast_nullable_to_non_nullable
              as String,
      cyrillicOnly: cyrillicOnly == freezed
          ? _value.cyrillicOnly
          : cyrillicOnly // ignore: cast_nullable_to_non_nullable
              as String,
      numbersOnly: numbersOnly == freezed
          ? _value.numbersOnly
          : numbersOnly // ignore: cast_nullable_to_non_nullable
              as String,
      wrongPhoneFormat: wrongPhoneFormat == freezed
          ? _value.wrongPhoneFormat
          : wrongPhoneFormat // ignore: cast_nullable_to_non_nullable
              as String,
      passwordsNotEqual: passwordsNotEqual == freezed
          ? _value.passwordsNotEqual
          : passwordsNotEqual // ignore: cast_nullable_to_non_nullable
              as String,
      wrongPasswordFormat: wrongPasswordFormat == freezed
          ? _value.wrongPasswordFormat
          : wrongPasswordFormat // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_ValidationDictionary implements _ValidationDictionary {
  const _$_ValidationDictionary(
      {@JsonKey(name: 'wrong_email_format')
          required this.emailValidationError,
      @JsonKey(name: 'cyrillic_only')
          required this.cyrillicOnly,
      @JsonKey(name: 'numbers_only')
          required this.numbersOnly,
      @JsonKey(name: 'wrong_phone_format')
          required this.wrongPhoneFormat,
      @JsonKey(name: 'passwords_not_equal')
          required this.passwordsNotEqual,
      @JsonKey(name: 'wrong_password_format')
          required this.wrongPasswordFormat});

  factory _$_ValidationDictionary.fromJson(Map<String, dynamic> json) =>
      _$$_ValidationDictionaryFromJson(json);

  @override
  @JsonKey(name: 'wrong_email_format')
  final String emailValidationError;
  @override
  @JsonKey(name: 'cyrillic_only')
  final String cyrillicOnly;
  @override
  @JsonKey(name: 'numbers_only')
  final String numbersOnly;
  @override
  @JsonKey(name: 'wrong_phone_format')
  final String wrongPhoneFormat;
  @override
  @JsonKey(name: 'passwords_not_equal')
  final String passwordsNotEqual;
  @override
  @JsonKey(name: 'wrong_password_format')
  final String wrongPasswordFormat;

  @override
  String toString() {
    return 'ValidationDictionary(emailValidationError: $emailValidationError, cyrillicOnly: $cyrillicOnly, numbersOnly: $numbersOnly, wrongPhoneFormat: $wrongPhoneFormat, passwordsNotEqual: $passwordsNotEqual, wrongPasswordFormat: $wrongPasswordFormat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValidationDictionary &&
            const DeepCollectionEquality()
                .equals(other.emailValidationError, emailValidationError) &&
            const DeepCollectionEquality()
                .equals(other.cyrillicOnly, cyrillicOnly) &&
            const DeepCollectionEquality()
                .equals(other.numbersOnly, numbersOnly) &&
            const DeepCollectionEquality()
                .equals(other.wrongPhoneFormat, wrongPhoneFormat) &&
            const DeepCollectionEquality()
                .equals(other.passwordsNotEqual, passwordsNotEqual) &&
            const DeepCollectionEquality()
                .equals(other.wrongPasswordFormat, wrongPasswordFormat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailValidationError),
      const DeepCollectionEquality().hash(cyrillicOnly),
      const DeepCollectionEquality().hash(numbersOnly),
      const DeepCollectionEquality().hash(wrongPhoneFormat),
      const DeepCollectionEquality().hash(passwordsNotEqual),
      const DeepCollectionEquality().hash(wrongPasswordFormat));

  @JsonKey(ignore: true)
  @override
  _$ValidationDictionaryCopyWith<_ValidationDictionary> get copyWith =>
      __$ValidationDictionaryCopyWithImpl<_ValidationDictionary>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ValidationDictionaryToJson(this);
  }
}

abstract class _ValidationDictionary implements ValidationDictionary {
  const factory _ValidationDictionary(
      {@JsonKey(name: 'wrong_email_format')
          required String emailValidationError,
      @JsonKey(name: 'cyrillic_only')
          required String cyrillicOnly,
      @JsonKey(name: 'numbers_only')
          required String numbersOnly,
      @JsonKey(name: 'wrong_phone_format')
          required String wrongPhoneFormat,
      @JsonKey(name: 'passwords_not_equal')
          required String passwordsNotEqual,
      @JsonKey(name: 'wrong_password_format')
          required String wrongPasswordFormat}) = _$_ValidationDictionary;

  factory _ValidationDictionary.fromJson(Map<String, dynamic> json) =
      _$_ValidationDictionary.fromJson;

  @override
  @JsonKey(name: 'wrong_email_format')
  String get emailValidationError;
  @override
  @JsonKey(name: 'cyrillic_only')
  String get cyrillicOnly;
  @override
  @JsonKey(name: 'numbers_only')
  String get numbersOnly;
  @override
  @JsonKey(name: 'wrong_phone_format')
  String get wrongPhoneFormat;
  @override
  @JsonKey(name: 'passwords_not_equal')
  String get passwordsNotEqual;
  @override
  @JsonKey(name: 'wrong_password_format')
  String get wrongPasswordFormat;
  @override
  @JsonKey(ignore: true)
  _$ValidationDictionaryCopyWith<_ValidationDictionary> get copyWith =>
      throw _privateConstructorUsedError;
}
