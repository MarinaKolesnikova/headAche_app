// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginDTO _$LoginDTOFromJson(Map<String, dynamic> json) {
  return _LoginDTO.fromJson(json);
}

/// @nodoc
class _$LoginDTOTearOff {
  const _$LoginDTOTearOff();

  _LoginDTO call(
      {@JsonKey(name: 'email') required String email,
      @JsonKey(name: 'password') required String password}) {
    return _LoginDTO(
      email: email,
      password: password,
    );
  }

  LoginDTO fromJson(Map<String, Object?> json) {
    return LoginDTO.fromJson(json);
  }
}

/// @nodoc
const $LoginDTO = _$LoginDTOTearOff();

/// @nodoc
mixin _$LoginDTO {
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDTOCopyWith<LoginDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDTOCopyWith<$Res> {
  factory $LoginDTOCopyWith(LoginDTO value, $Res Function(LoginDTO) then) =
      _$LoginDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class _$LoginDTOCopyWithImpl<$Res> implements $LoginDTOCopyWith<$Res> {
  _$LoginDTOCopyWithImpl(this._value, this._then);

  final LoginDTO _value;
  // ignore: unused_field
  final $Res Function(LoginDTO) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LoginDTOCopyWith<$Res> implements $LoginDTOCopyWith<$Res> {
  factory _$LoginDTOCopyWith(_LoginDTO value, $Res Function(_LoginDTO) then) =
      __$LoginDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$LoginDTOCopyWithImpl<$Res> extends _$LoginDTOCopyWithImpl<$Res>
    implements _$LoginDTOCopyWith<$Res> {
  __$LoginDTOCopyWithImpl(_LoginDTO _value, $Res Function(_LoginDTO) _then)
      : super(_value, (v) => _then(v as _LoginDTO));

  @override
  _LoginDTO get _value => super._value as _LoginDTO;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_LoginDTO(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_LoginDTO extends _LoginDTO {
  const _$_LoginDTO(
      {@JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'password') required this.password})
      : super._();

  factory _$_LoginDTO.fromJson(Map<String, dynamic> json) =>
      _$$_LoginDTOFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'password')
  final String password;

  @override
  String toString() {
    return 'LoginDTO(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginDTO &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$LoginDTOCopyWith<_LoginDTO> get copyWith =>
      __$LoginDTOCopyWithImpl<_LoginDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginDTOToJson(this);
  }
}

abstract class _LoginDTO extends LoginDTO {
  const factory _LoginDTO(
      {@JsonKey(name: 'email') required String email,
      @JsonKey(name: 'password') required String password}) = _$_LoginDTO;
  const _LoginDTO._() : super._();

  factory _LoginDTO.fromJson(Map<String, dynamic> json) = _$_LoginDTO.fromJson;

  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'password')
  String get password;
  @override
  @JsonKey(ignore: true)
  _$LoginDTOCopyWith<_LoginDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
