// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'social_token_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocialTokenDTO _$SocialTokenDTOFromJson(Map<String, dynamic> json) {
  return _SocialTokenDTO.fromJson(json);
}

/// @nodoc
class _$SocialTokenDTOTearOff {
  const _$SocialTokenDTOTearOff();

  _SocialTokenDTO call(
      {@JsonKey(name: 'access_token') required String accessToken}) {
    return _SocialTokenDTO(
      accessToken: accessToken,
    );
  }

  SocialTokenDTO fromJson(Map<String, Object?> json) {
    return SocialTokenDTO.fromJson(json);
  }
}

/// @nodoc
const $SocialTokenDTO = _$SocialTokenDTOTearOff();

/// @nodoc
mixin _$SocialTokenDTO {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialTokenDTOCopyWith<SocialTokenDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialTokenDTOCopyWith<$Res> {
  factory $SocialTokenDTOCopyWith(
          SocialTokenDTO value, $Res Function(SocialTokenDTO) then) =
      _$SocialTokenDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'access_token') String accessToken});
}

/// @nodoc
class _$SocialTokenDTOCopyWithImpl<$Res>
    implements $SocialTokenDTOCopyWith<$Res> {
  _$SocialTokenDTOCopyWithImpl(this._value, this._then);

  final SocialTokenDTO _value;
  // ignore: unused_field
  final $Res Function(SocialTokenDTO) _then;

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
abstract class _$SocialTokenDTOCopyWith<$Res>
    implements $SocialTokenDTOCopyWith<$Res> {
  factory _$SocialTokenDTOCopyWith(
          _SocialTokenDTO value, $Res Function(_SocialTokenDTO) then) =
      __$SocialTokenDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'access_token') String accessToken});
}

/// @nodoc
class __$SocialTokenDTOCopyWithImpl<$Res>
    extends _$SocialTokenDTOCopyWithImpl<$Res>
    implements _$SocialTokenDTOCopyWith<$Res> {
  __$SocialTokenDTOCopyWithImpl(
      _SocialTokenDTO _value, $Res Function(_SocialTokenDTO) _then)
      : super(_value, (v) => _then(v as _SocialTokenDTO));

  @override
  _SocialTokenDTO get _value => super._value as _SocialTokenDTO;

  @override
  $Res call({
    Object? accessToken = freezed,
  }) {
    return _then(_SocialTokenDTO(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_SocialTokenDTO implements _SocialTokenDTO {
  const _$_SocialTokenDTO(
      {@JsonKey(name: 'access_token') required this.accessToken});

  factory _$_SocialTokenDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SocialTokenDTOFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;

  @override
  String toString() {
    return 'SocialTokenDTO(accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocialTokenDTO &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(accessToken));

  @JsonKey(ignore: true)
  @override
  _$SocialTokenDTOCopyWith<_SocialTokenDTO> get copyWith =>
      __$SocialTokenDTOCopyWithImpl<_SocialTokenDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocialTokenDTOToJson(this);
  }
}

abstract class _SocialTokenDTO implements SocialTokenDTO {
  const factory _SocialTokenDTO(
          {@JsonKey(name: 'access_token') required String accessToken}) =
      _$_SocialTokenDTO;

  factory _SocialTokenDTO.fromJson(Map<String, dynamic> json) =
      _$_SocialTokenDTO.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$SocialTokenDTOCopyWith<_SocialTokenDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
