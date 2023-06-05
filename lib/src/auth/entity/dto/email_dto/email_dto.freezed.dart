// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'email_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailDTO _$EmailDTOFromJson(Map<String, dynamic> json) {
  return _EmailDTO.fromJson(json);
}

/// @nodoc
class _$EmailDTOTearOff {
  const _$EmailDTOTearOff();

  _EmailDTO call({@JsonKey(name: 'email') String? email}) {
    return _EmailDTO(
      email: email,
    );
  }

  EmailDTO fromJson(Map<String, Object?> json) {
    return EmailDTO.fromJson(json);
  }
}

/// @nodoc
const $EmailDTO = _$EmailDTOTearOff();

/// @nodoc
mixin _$EmailDTO {
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailDTOCopyWith<EmailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailDTOCopyWith<$Res> {
  factory $EmailDTOCopyWith(EmailDTO value, $Res Function(EmailDTO) then) =
      _$EmailDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'email') String? email});
}

/// @nodoc
class _$EmailDTOCopyWithImpl<$Res> implements $EmailDTOCopyWith<$Res> {
  _$EmailDTOCopyWithImpl(this._value, this._then);

  final EmailDTO _value;
  // ignore: unused_field
  final $Res Function(EmailDTO) _then;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EmailDTOCopyWith<$Res> implements $EmailDTOCopyWith<$Res> {
  factory _$EmailDTOCopyWith(_EmailDTO value, $Res Function(_EmailDTO) then) =
      __$EmailDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'email') String? email});
}

/// @nodoc
class __$EmailDTOCopyWithImpl<$Res> extends _$EmailDTOCopyWithImpl<$Res>
    implements _$EmailDTOCopyWith<$Res> {
  __$EmailDTOCopyWithImpl(_EmailDTO _value, $Res Function(_EmailDTO) _then)
      : super(_value, (v) => _then(v as _EmailDTO));

  @override
  _EmailDTO get _value => super._value as _EmailDTO;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_EmailDTO(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_EmailDTO extends _EmailDTO {
  const _$_EmailDTO({@JsonKey(name: 'email') this.email}) : super._();

  factory _$_EmailDTO.fromJson(Map<String, dynamic> json) =>
      _$$_EmailDTOFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String? email;

  @override
  String toString() {
    return 'EmailDTO(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailDTO &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$EmailDTOCopyWith<_EmailDTO> get copyWith =>
      __$EmailDTOCopyWithImpl<_EmailDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailDTOToJson(this);
  }
}

abstract class _EmailDTO extends EmailDTO {
  const factory _EmailDTO({@JsonKey(name: 'email') String? email}) =
      _$_EmailDTO;
  const _EmailDTO._() : super._();

  factory _EmailDTO.fromJson(Map<String, dynamic> json) = _$_EmailDTO.fromJson;

  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$EmailDTOCopyWith<_EmailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
