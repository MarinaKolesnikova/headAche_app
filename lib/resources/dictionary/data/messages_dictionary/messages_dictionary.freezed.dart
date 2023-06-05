// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'messages_dictionary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessagesDictionary _$MessagesDictionaryFromJson(Map<String, dynamic> json) {
  return _MessagesDictionary.fromJson(json);
}

/// @nodoc
class _$MessagesDictionaryTearOff {
  const _$MessagesDictionaryTearOff();

  _MessagesDictionary call(
      {@JsonKey(name: 'account_exists') required String accountExists,
      @JsonKey(name: 'wrong_credentials') required String wrongCredentials}) {
    return _MessagesDictionary(
      accountExists: accountExists,
      wrongCredentials: wrongCredentials,
    );
  }

  MessagesDictionary fromJson(Map<String, Object?> json) {
    return MessagesDictionary.fromJson(json);
  }
}

/// @nodoc
const $MessagesDictionary = _$MessagesDictionaryTearOff();

/// @nodoc
mixin _$MessagesDictionary {
  @JsonKey(name: 'account_exists')
  String get accountExists => throw _privateConstructorUsedError;
  @JsonKey(name: 'wrong_credentials')
  String get wrongCredentials => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagesDictionaryCopyWith<MessagesDictionary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesDictionaryCopyWith<$Res> {
  factory $MessagesDictionaryCopyWith(
          MessagesDictionary value, $Res Function(MessagesDictionary) then) =
      _$MessagesDictionaryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'account_exists') String accountExists,
      @JsonKey(name: 'wrong_credentials') String wrongCredentials});
}

/// @nodoc
class _$MessagesDictionaryCopyWithImpl<$Res>
    implements $MessagesDictionaryCopyWith<$Res> {
  _$MessagesDictionaryCopyWithImpl(this._value, this._then);

  final MessagesDictionary _value;
  // ignore: unused_field
  final $Res Function(MessagesDictionary) _then;

  @override
  $Res call({
    Object? accountExists = freezed,
    Object? wrongCredentials = freezed,
  }) {
    return _then(_value.copyWith(
      accountExists: accountExists == freezed
          ? _value.accountExists
          : accountExists // ignore: cast_nullable_to_non_nullable
              as String,
      wrongCredentials: wrongCredentials == freezed
          ? _value.wrongCredentials
          : wrongCredentials // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MessagesDictionaryCopyWith<$Res>
    implements $MessagesDictionaryCopyWith<$Res> {
  factory _$MessagesDictionaryCopyWith(
          _MessagesDictionary value, $Res Function(_MessagesDictionary) then) =
      __$MessagesDictionaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'account_exists') String accountExists,
      @JsonKey(name: 'wrong_credentials') String wrongCredentials});
}

/// @nodoc
class __$MessagesDictionaryCopyWithImpl<$Res>
    extends _$MessagesDictionaryCopyWithImpl<$Res>
    implements _$MessagesDictionaryCopyWith<$Res> {
  __$MessagesDictionaryCopyWithImpl(
      _MessagesDictionary _value, $Res Function(_MessagesDictionary) _then)
      : super(_value, (v) => _then(v as _MessagesDictionary));

  @override
  _MessagesDictionary get _value => super._value as _MessagesDictionary;

  @override
  $Res call({
    Object? accountExists = freezed,
    Object? wrongCredentials = freezed,
  }) {
    return _then(_MessagesDictionary(
      accountExists: accountExists == freezed
          ? _value.accountExists
          : accountExists // ignore: cast_nullable_to_non_nullable
              as String,
      wrongCredentials: wrongCredentials == freezed
          ? _value.wrongCredentials
          : wrongCredentials // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_MessagesDictionary implements _MessagesDictionary {
  const _$_MessagesDictionary(
      {@JsonKey(name: 'account_exists') required this.accountExists,
      @JsonKey(name: 'wrong_credentials') required this.wrongCredentials});

  factory _$_MessagesDictionary.fromJson(Map<String, dynamic> json) =>
      _$$_MessagesDictionaryFromJson(json);

  @override
  @JsonKey(name: 'account_exists')
  final String accountExists;
  @override
  @JsonKey(name: 'wrong_credentials')
  final String wrongCredentials;

  @override
  String toString() {
    return 'MessagesDictionary(accountExists: $accountExists, wrongCredentials: $wrongCredentials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessagesDictionary &&
            const DeepCollectionEquality()
                .equals(other.accountExists, accountExists) &&
            const DeepCollectionEquality()
                .equals(other.wrongCredentials, wrongCredentials));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accountExists),
      const DeepCollectionEquality().hash(wrongCredentials));

  @JsonKey(ignore: true)
  @override
  _$MessagesDictionaryCopyWith<_MessagesDictionary> get copyWith =>
      __$MessagesDictionaryCopyWithImpl<_MessagesDictionary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessagesDictionaryToJson(this);
  }
}

abstract class _MessagesDictionary implements MessagesDictionary {
  const factory _MessagesDictionary(
      {@JsonKey(name: 'account_exists')
          required String accountExists,
      @JsonKey(name: 'wrong_credentials')
          required String wrongCredentials}) = _$_MessagesDictionary;

  factory _MessagesDictionary.fromJson(Map<String, dynamic> json) =
      _$_MessagesDictionary.fromJson;

  @override
  @JsonKey(name: 'account_exists')
  String get accountExists;
  @override
  @JsonKey(name: 'wrong_credentials')
  String get wrongCredentials;
  @override
  @JsonKey(ignore: true)
  _$MessagesDictionaryCopyWith<_MessagesDictionary> get copyWith =>
      throw _privateConstructorUsedError;
}
