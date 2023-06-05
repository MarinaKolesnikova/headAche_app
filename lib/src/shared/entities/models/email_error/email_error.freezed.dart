// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'email_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailError _$EmailErrorFromJson(Map<String, dynamic> json) {
  return _EmailError.fromJson(json);
}

/// @nodoc
class _$EmailErrorTearOff {
  const _$EmailErrorTearOff();

  _EmailError call({@JsonKey(name: 'email') List<String>? errorMessage}) {
    return _EmailError(
      errorMessage: errorMessage,
    );
  }

  EmailError fromJson(Map<String, Object?> json) {
    return EmailError.fromJson(json);
  }
}

/// @nodoc
const $EmailError = _$EmailErrorTearOff();

/// @nodoc
mixin _$EmailError {
  @JsonKey(name: 'email')
  List<String>? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailErrorCopyWith<EmailError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailErrorCopyWith<$Res> {
  factory $EmailErrorCopyWith(
          EmailError value, $Res Function(EmailError) then) =
      _$EmailErrorCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'email') List<String>? errorMessage});
}

/// @nodoc
class _$EmailErrorCopyWithImpl<$Res> implements $EmailErrorCopyWith<$Res> {
  _$EmailErrorCopyWithImpl(this._value, this._then);

  final EmailError _value;
  // ignore: unused_field
  final $Res Function(EmailError) _then;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$EmailErrorCopyWith<$Res> implements $EmailErrorCopyWith<$Res> {
  factory _$EmailErrorCopyWith(
          _EmailError value, $Res Function(_EmailError) then) =
      __$EmailErrorCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'email') List<String>? errorMessage});
}

/// @nodoc
class __$EmailErrorCopyWithImpl<$Res> extends _$EmailErrorCopyWithImpl<$Res>
    implements _$EmailErrorCopyWith<$Res> {
  __$EmailErrorCopyWithImpl(
      _EmailError _value, $Res Function(_EmailError) _then)
      : super(_value, (v) => _then(v as _EmailError));

  @override
  _EmailError get _value => super._value as _EmailError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_EmailError(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_EmailError implements _EmailError {
  const _$_EmailError({@JsonKey(name: 'email') this.errorMessage});

  factory _$_EmailError.fromJson(Map<String, dynamic> json) =>
      _$$_EmailErrorFromJson(json);

  @override
  @JsonKey(name: 'email')
  final List<String>? errorMessage;

  @override
  String toString() {
    return 'EmailError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailError &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$EmailErrorCopyWith<_EmailError> get copyWith =>
      __$EmailErrorCopyWithImpl<_EmailError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailErrorToJson(this);
  }
}

abstract class _EmailError implements EmailError {
  const factory _EmailError(
      {@JsonKey(name: 'email') List<String>? errorMessage}) = _$_EmailError;

  factory _EmailError.fromJson(Map<String, dynamic> json) =
      _$_EmailError.fromJson;

  @override
  @JsonKey(name: 'email')
  List<String>? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$EmailErrorCopyWith<_EmailError> get copyWith =>
      throw _privateConstructorUsedError;
}
