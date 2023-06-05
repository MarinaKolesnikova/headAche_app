// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'social_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SocialTokenTearOff {
  const _$SocialTokenTearOff();

  _SocialToken call({required String accessToken}) {
    return _SocialToken(
      accessToken: accessToken,
    );
  }
}

/// @nodoc
const $SocialToken = _$SocialTokenTearOff();

/// @nodoc
mixin _$SocialToken {
  String get accessToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SocialTokenCopyWith<SocialToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialTokenCopyWith<$Res> {
  factory $SocialTokenCopyWith(
          SocialToken value, $Res Function(SocialToken) then) =
      _$SocialTokenCopyWithImpl<$Res>;
  $Res call({String accessToken});
}

/// @nodoc
class _$SocialTokenCopyWithImpl<$Res> implements $SocialTokenCopyWith<$Res> {
  _$SocialTokenCopyWithImpl(this._value, this._then);

  final SocialToken _value;
  // ignore: unused_field
  final $Res Function(SocialToken) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SocialTokenCopyWith<$Res>
    implements $SocialTokenCopyWith<$Res> {
  factory _$SocialTokenCopyWith(
          _SocialToken value, $Res Function(_SocialToken) then) =
      __$SocialTokenCopyWithImpl<$Res>;
  @override
  $Res call({String accessToken});
}

/// @nodoc
class __$SocialTokenCopyWithImpl<$Res> extends _$SocialTokenCopyWithImpl<$Res>
    implements _$SocialTokenCopyWith<$Res> {
  __$SocialTokenCopyWithImpl(
      _SocialToken _value, $Res Function(_SocialToken) _then)
      : super(_value, (v) => _then(v as _SocialToken));

  @override
  _SocialToken get _value => super._value as _SocialToken;

  @override
  $Res call({
    Object? accessToken = freezed,
  }) {
    return _then(_SocialToken(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SocialToken implements _SocialToken {
  const _$_SocialToken({required this.accessToken});

  @override
  final String accessToken;

  @override
  String toString() {
    return 'SocialToken(accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocialToken &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(accessToken));

  @JsonKey(ignore: true)
  @override
  _$SocialTokenCopyWith<_SocialToken> get copyWith =>
      __$SocialTokenCopyWithImpl<_SocialToken>(this, _$identity);
}

abstract class _SocialToken implements SocialToken {
  const factory _SocialToken({required String accessToken}) = _$_SocialToken;

  @override
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$SocialTokenCopyWith<_SocialToken> get copyWith =>
      throw _privateConstructorUsedError;
}
