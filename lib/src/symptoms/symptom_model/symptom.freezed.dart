// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'symptom.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Symptom _$SymptomFromJson(Map<String, dynamic> json) {
  return _Symptom.fromJson(json);
}

/// @nodoc
class _$SymptomTearOff {
  const _$SymptomTearOff();

  _Symptom call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name}) {
    return _Symptom(
      id: id,
      name: name,
    );
  }

  Symptom fromJson(Map<String, Object?> json) {
    return Symptom.fromJson(json);
  }
}

/// @nodoc
const $Symptom = _$SymptomTearOff();

/// @nodoc
mixin _$Symptom {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SymptomCopyWith<Symptom> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomCopyWith<$Res> {
  factory $SymptomCopyWith(Symptom value, $Res Function(Symptom) then) =
      _$SymptomCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$SymptomCopyWithImpl<$Res> implements $SymptomCopyWith<$Res> {
  _$SymptomCopyWithImpl(this._value, this._then);

  final Symptom _value;
  // ignore: unused_field
  final $Res Function(Symptom) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SymptomCopyWith<$Res> implements $SymptomCopyWith<$Res> {
  factory _$SymptomCopyWith(_Symptom value, $Res Function(_Symptom) then) =
      __$SymptomCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$SymptomCopyWithImpl<$Res> extends _$SymptomCopyWithImpl<$Res>
    implements _$SymptomCopyWith<$Res> {
  __$SymptomCopyWithImpl(_Symptom _value, $Res Function(_Symptom) _then)
      : super(_value, (v) => _then(v as _Symptom));

  @override
  _Symptom get _value => super._value as _Symptom;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Symptom(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_Symptom implements _Symptom {
  const _$_Symptom(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$_Symptom.fromJson(Map<String, dynamic> json) =>
      _$$_SymptomFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'Symptom(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Symptom &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$SymptomCopyWith<_Symptom> get copyWith =>
      __$SymptomCopyWithImpl<_Symptom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SymptomToJson(this);
  }
}

abstract class _Symptom implements Symptom {
  const factory _Symptom(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name}) = _$_Symptom;

  factory _Symptom.fromJson(Map<String, dynamic> json) = _$_Symptom.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$SymptomCopyWith<_Symptom> get copyWith =>
      throw _privateConstructorUsedError;
}
