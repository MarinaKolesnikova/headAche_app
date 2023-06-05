// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'portal_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PortalError _$PortalErrorFromJson(Map<String, dynamic> json) {
  return _PortalError.fromJson(json);
}

/// @nodoc
class _$PortalErrorTearOff {
  const _$PortalErrorTearOff();

  _PortalError call({@JsonKey(name: 'detail') String? errorMessage}) {
    return _PortalError(
      errorMessage: errorMessage,
    );
  }

  PortalError fromJson(Map<String, Object?> json) {
    return PortalError.fromJson(json);
  }
}

/// @nodoc
const $PortalError = _$PortalErrorTearOff();

/// @nodoc
mixin _$PortalError {
  @JsonKey(name: 'detail')
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortalErrorCopyWith<PortalError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortalErrorCopyWith<$Res> {
  factory $PortalErrorCopyWith(
          PortalError value, $Res Function(PortalError) then) =
      _$PortalErrorCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'detail') String? errorMessage});
}

/// @nodoc
class _$PortalErrorCopyWithImpl<$Res> implements $PortalErrorCopyWith<$Res> {
  _$PortalErrorCopyWithImpl(this._value, this._then);

  final PortalError _value;
  // ignore: unused_field
  final $Res Function(PortalError) _then;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PortalErrorCopyWith<$Res>
    implements $PortalErrorCopyWith<$Res> {
  factory _$PortalErrorCopyWith(
          _PortalError value, $Res Function(_PortalError) then) =
      __$PortalErrorCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'detail') String? errorMessage});
}

/// @nodoc
class __$PortalErrorCopyWithImpl<$Res> extends _$PortalErrorCopyWithImpl<$Res>
    implements _$PortalErrorCopyWith<$Res> {
  __$PortalErrorCopyWithImpl(
      _PortalError _value, $Res Function(_PortalError) _then)
      : super(_value, (v) => _then(v as _PortalError));

  @override
  _PortalError get _value => super._value as _PortalError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_PortalError(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_PortalError implements _PortalError {
  const _$_PortalError({@JsonKey(name: 'detail') this.errorMessage});

  factory _$_PortalError.fromJson(Map<String, dynamic> json) =>
      _$$_PortalErrorFromJson(json);

  @override
  @JsonKey(name: 'detail')
  final String? errorMessage;

  @override
  String toString() {
    return 'PortalError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PortalError &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$PortalErrorCopyWith<_PortalError> get copyWith =>
      __$PortalErrorCopyWithImpl<_PortalError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PortalErrorToJson(this);
  }
}

abstract class _PortalError implements PortalError {
  const factory _PortalError({@JsonKey(name: 'detail') String? errorMessage}) =
      _$_PortalError;

  factory _PortalError.fromJson(Map<String, dynamic> json) =
      _$_PortalError.fromJson;

  @override
  @JsonKey(name: 'detail')
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$PortalErrorCopyWith<_PortalError> get copyWith =>
      throw _privateConstructorUsedError;
}
