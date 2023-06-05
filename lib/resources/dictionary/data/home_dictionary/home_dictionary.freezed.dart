// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_dictionary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeDictionary _$HomeDictionaryFromJson(Map<String, dynamic> json) {
  return _HomeDictionary.fromJson(json);
}

/// @nodoc
class _$HomeDictionaryTearOff {
  const _$HomeDictionaryTearOff();

  _HomeDictionary call(
      {@JsonKey(name: 'date') required String date,
      @JsonKey(name: 'symptoms') required String symptoms,
      @JsonKey(name: 'treatment') required String treatment,
      @JsonKey(name: 'pain_level') required String painLevel}) {
    return _HomeDictionary(
      date: date,
      symptoms: symptoms,
      treatment: treatment,
      painLevel: painLevel,
    );
  }

  HomeDictionary fromJson(Map<String, Object?> json) {
    return HomeDictionary.fromJson(json);
  }
}

/// @nodoc
const $HomeDictionary = _$HomeDictionaryTearOff();

/// @nodoc
mixin _$HomeDictionary {
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'symptoms')
  String get symptoms => throw _privateConstructorUsedError;
  @JsonKey(name: 'treatment')
  String get treatment => throw _privateConstructorUsedError;
  @JsonKey(name: 'pain_level')
  String get painLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeDictionaryCopyWith<HomeDictionary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDictionaryCopyWith<$Res> {
  factory $HomeDictionaryCopyWith(
          HomeDictionary value, $Res Function(HomeDictionary) then) =
      _$HomeDictionaryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'date') String date,
      @JsonKey(name: 'symptoms') String symptoms,
      @JsonKey(name: 'treatment') String treatment,
      @JsonKey(name: 'pain_level') String painLevel});
}

/// @nodoc
class _$HomeDictionaryCopyWithImpl<$Res>
    implements $HomeDictionaryCopyWith<$Res> {
  _$HomeDictionaryCopyWithImpl(this._value, this._then);

  final HomeDictionary _value;
  // ignore: unused_field
  final $Res Function(HomeDictionary) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? symptoms = freezed,
    Object? treatment = freezed,
    Object? painLevel = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      symptoms: symptoms == freezed
          ? _value.symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as String,
      treatment: treatment == freezed
          ? _value.treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as String,
      painLevel: painLevel == freezed
          ? _value.painLevel
          : painLevel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$HomeDictionaryCopyWith<$Res>
    implements $HomeDictionaryCopyWith<$Res> {
  factory _$HomeDictionaryCopyWith(
          _HomeDictionary value, $Res Function(_HomeDictionary) then) =
      __$HomeDictionaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'date') String date,
      @JsonKey(name: 'symptoms') String symptoms,
      @JsonKey(name: 'treatment') String treatment,
      @JsonKey(name: 'pain_level') String painLevel});
}

/// @nodoc
class __$HomeDictionaryCopyWithImpl<$Res>
    extends _$HomeDictionaryCopyWithImpl<$Res>
    implements _$HomeDictionaryCopyWith<$Res> {
  __$HomeDictionaryCopyWithImpl(
      _HomeDictionary _value, $Res Function(_HomeDictionary) _then)
      : super(_value, (v) => _then(v as _HomeDictionary));

  @override
  _HomeDictionary get _value => super._value as _HomeDictionary;

  @override
  $Res call({
    Object? date = freezed,
    Object? symptoms = freezed,
    Object? treatment = freezed,
    Object? painLevel = freezed,
  }) {
    return _then(_HomeDictionary(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      symptoms: symptoms == freezed
          ? _value.symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as String,
      treatment: treatment == freezed
          ? _value.treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as String,
      painLevel: painLevel == freezed
          ? _value.painLevel
          : painLevel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_HomeDictionary implements _HomeDictionary {
  const _$_HomeDictionary(
      {@JsonKey(name: 'date') required this.date,
      @JsonKey(name: 'symptoms') required this.symptoms,
      @JsonKey(name: 'treatment') required this.treatment,
      @JsonKey(name: 'pain_level') required this.painLevel});

  factory _$_HomeDictionary.fromJson(Map<String, dynamic> json) =>
      _$$_HomeDictionaryFromJson(json);

  @override
  @JsonKey(name: 'date')
  final String date;
  @override
  @JsonKey(name: 'symptoms')
  final String symptoms;
  @override
  @JsonKey(name: 'treatment')
  final String treatment;
  @override
  @JsonKey(name: 'pain_level')
  final String painLevel;

  @override
  String toString() {
    return 'HomeDictionary(date: $date, symptoms: $symptoms, treatment: $treatment, painLevel: $painLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeDictionary &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.symptoms, symptoms) &&
            const DeepCollectionEquality().equals(other.treatment, treatment) &&
            const DeepCollectionEquality().equals(other.painLevel, painLevel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(symptoms),
      const DeepCollectionEquality().hash(treatment),
      const DeepCollectionEquality().hash(painLevel));

  @JsonKey(ignore: true)
  @override
  _$HomeDictionaryCopyWith<_HomeDictionary> get copyWith =>
      __$HomeDictionaryCopyWithImpl<_HomeDictionary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeDictionaryToJson(this);
  }
}

abstract class _HomeDictionary implements HomeDictionary {
  const factory _HomeDictionary(
          {@JsonKey(name: 'date') required String date,
          @JsonKey(name: 'symptoms') required String symptoms,
          @JsonKey(name: 'treatment') required String treatment,
          @JsonKey(name: 'pain_level') required String painLevel}) =
      _$_HomeDictionary;

  factory _HomeDictionary.fromJson(Map<String, dynamic> json) =
      _$_HomeDictionary.fromJson;

  @override
  @JsonKey(name: 'date')
  String get date;
  @override
  @JsonKey(name: 'symptoms')
  String get symptoms;
  @override
  @JsonKey(name: 'treatment')
  String get treatment;
  @override
  @JsonKey(name: 'pain_level')
  String get painLevel;
  @override
  @JsonKey(ignore: true)
  _$HomeDictionaryCopyWith<_HomeDictionary> get copyWith =>
      throw _privateConstructorUsedError;
}
