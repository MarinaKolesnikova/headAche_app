// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignUpDTO _$SignUpDTOFromJson(Map<String, dynamic> json) {
  return _SignUpDTO.fromJson(json);
}

/// @nodoc
class _$SignUpDTOTearOff {
  const _$SignUpDTOTearOff();

  _SignUpDTO call(
      {@JsonKey(name: 'email') required String email,
      @JsonKey(name: 'userName') required String userName,
      @JsonKey(name: 'password') required String password}) {
    return _SignUpDTO(
      email: email,
      userName: userName,
      password: password,
    );
  }

  SignUpDTO fromJson(Map<String, Object?> json) {
    return SignUpDTO.fromJson(json);
  }
}

/// @nodoc
const $SignUpDTO = _$SignUpDTOTearOff();

/// @nodoc
mixin _$SignUpDTO {
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'userName')
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpDTOCopyWith<SignUpDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpDTOCopyWith<$Res> {
  factory $SignUpDTOCopyWith(SignUpDTO value, $Res Function(SignUpDTO) then) =
      _$SignUpDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'userName') String userName,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class _$SignUpDTOCopyWithImpl<$Res> implements $SignUpDTOCopyWith<$Res> {
  _$SignUpDTOCopyWithImpl(this._value, this._then);

  final SignUpDTO _value;
  // ignore: unused_field
  final $Res Function(SignUpDTO) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SignUpDTOCopyWith<$Res> implements $SignUpDTOCopyWith<$Res> {
  factory _$SignUpDTOCopyWith(
          _SignUpDTO value, $Res Function(_SignUpDTO) then) =
      __$SignUpDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'userName') String userName,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$SignUpDTOCopyWithImpl<$Res> extends _$SignUpDTOCopyWithImpl<$Res>
    implements _$SignUpDTOCopyWith<$Res> {
  __$SignUpDTOCopyWithImpl(_SignUpDTO _value, $Res Function(_SignUpDTO) _then)
      : super(_value, (v) => _then(v as _SignUpDTO));

  @override
  _SignUpDTO get _value => super._value as _SignUpDTO;

  @override
  $Res call({
    Object? email = freezed,
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_SignUpDTO(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
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
class _$_SignUpDTO extends _SignUpDTO {
  const _$_SignUpDTO(
      {@JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'userName') required this.userName,
      @JsonKey(name: 'password') required this.password})
      : super._();

  factory _$_SignUpDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SignUpDTOFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'userName')
  final String userName;
  @override
  @JsonKey(name: 'password')
  final String password;

  @override
  String toString() {
    return 'SignUpDTO(email: $email, userName: $userName, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpDTO &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$SignUpDTOCopyWith<_SignUpDTO> get copyWith =>
      __$SignUpDTOCopyWithImpl<_SignUpDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignUpDTOToJson(this);
  }
}

abstract class _SignUpDTO extends SignUpDTO {
  const factory _SignUpDTO(
      {@JsonKey(name: 'email') required String email,
      @JsonKey(name: 'userName') required String userName,
      @JsonKey(name: 'password') required String password}) = _$_SignUpDTO;
  const _SignUpDTO._() : super._();

  factory _SignUpDTO.fromJson(Map<String, dynamic> json) =
      _$_SignUpDTO.fromJson;

  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'userName')
  String get userName;
  @override
  @JsonKey(name: 'password')
  String get password;
  @override
  @JsonKey(ignore: true)
  _$SignUpDTOCopyWith<_SignUpDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
