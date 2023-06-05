// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'attack_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AttackModelTearOff {
  const _$AttackModelTearOff();

  _AttackModel call(
      {@JsonKey(name: 'date') required DateTime date,
      @JsonKey(name: 'duration') required Duration duration,
      @JsonKey(name: 'description') required String description,
      @JsonKey(name: 'symptoms_list') List<Symptom>? symptoms,
      @JsonKey(name: 'treatment_list') List<Symptom>? treatment}) {
    return _AttackModel(
      date: date,
      duration: duration,
      description: description,
      symptoms: symptoms,
      treatment: treatment,
    );
  }
}

/// @nodoc
const $AttackModel = _$AttackModelTearOff();

/// @nodoc
mixin _$AttackModel {
  @JsonKey(name: 'date')
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  Duration get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'symptoms_list')
  List<Symptom>? get symptoms => throw _privateConstructorUsedError;
  @JsonKey(name: 'treatment_list')
  List<Symptom>? get treatment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttackModelCopyWith<AttackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttackModelCopyWith<$Res> {
  factory $AttackModelCopyWith(
          AttackModel value, $Res Function(AttackModel) then) =
      _$AttackModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'date') DateTime date,
      @JsonKey(name: 'duration') Duration duration,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'symptoms_list') List<Symptom>? symptoms,
      @JsonKey(name: 'treatment_list') List<Symptom>? treatment});
}

/// @nodoc
class _$AttackModelCopyWithImpl<$Res> implements $AttackModelCopyWith<$Res> {
  _$AttackModelCopyWithImpl(this._value, this._then);

  final AttackModel _value;
  // ignore: unused_field
  final $Res Function(AttackModel) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? duration = freezed,
    Object? description = freezed,
    Object? symptoms = freezed,
    Object? treatment = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      symptoms: symptoms == freezed
          ? _value.symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<Symptom>?,
      treatment: treatment == freezed
          ? _value.treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as List<Symptom>?,
    ));
  }
}

/// @nodoc
abstract class _$AttackModelCopyWith<$Res>
    implements $AttackModelCopyWith<$Res> {
  factory _$AttackModelCopyWith(
          _AttackModel value, $Res Function(_AttackModel) then) =
      __$AttackModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'date') DateTime date,
      @JsonKey(name: 'duration') Duration duration,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'symptoms_list') List<Symptom>? symptoms,
      @JsonKey(name: 'treatment_list') List<Symptom>? treatment});
}

/// @nodoc
class __$AttackModelCopyWithImpl<$Res> extends _$AttackModelCopyWithImpl<$Res>
    implements _$AttackModelCopyWith<$Res> {
  __$AttackModelCopyWithImpl(
      _AttackModel _value, $Res Function(_AttackModel) _then)
      : super(_value, (v) => _then(v as _AttackModel));

  @override
  _AttackModel get _value => super._value as _AttackModel;

  @override
  $Res call({
    Object? date = freezed,
    Object? duration = freezed,
    Object? description = freezed,
    Object? symptoms = freezed,
    Object? treatment = freezed,
  }) {
    return _then(_AttackModel(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      symptoms: symptoms == freezed
          ? _value.symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<Symptom>?,
      treatment: treatment == freezed
          ? _value.treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as List<Symptom>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_AttackModel extends _AttackModel {
  const _$_AttackModel(
      {@JsonKey(name: 'date') required this.date,
      @JsonKey(name: 'duration') required this.duration,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'symptoms_list') this.symptoms,
      @JsonKey(name: 'treatment_list') this.treatment})
      : super._();

  @override
  @JsonKey(name: 'date')
  final DateTime date;
  @override
  @JsonKey(name: 'duration')
  final Duration duration;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'symptoms_list')
  final List<Symptom>? symptoms;
  @override
  @JsonKey(name: 'treatment_list')
  final List<Symptom>? treatment;

  @override
  String toString() {
    return 'AttackModel(date: $date, duration: $duration, description: $description, symptoms: $symptoms, treatment: $treatment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AttackModel &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.symptoms, symptoms) &&
            const DeepCollectionEquality().equals(other.treatment, treatment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(symptoms),
      const DeepCollectionEquality().hash(treatment));

  @JsonKey(ignore: true)
  @override
  _$AttackModelCopyWith<_AttackModel> get copyWith =>
      __$AttackModelCopyWithImpl<_AttackModel>(this, _$identity);
}

abstract class _AttackModel extends AttackModel {
  const factory _AttackModel(
          {@JsonKey(name: 'date') required DateTime date,
          @JsonKey(name: 'duration') required Duration duration,
          @JsonKey(name: 'description') required String description,
          @JsonKey(name: 'symptoms_list') List<Symptom>? symptoms,
          @JsonKey(name: 'treatment_list') List<Symptom>? treatment}) =
      _$_AttackModel;
  const _AttackModel._() : super._();

  @override
  @JsonKey(name: 'date')
  DateTime get date;
  @override
  @JsonKey(name: 'duration')
  Duration get duration;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'symptoms_list')
  List<Symptom>? get symptoms;
  @override
  @JsonKey(name: 'treatment_list')
  List<Symptom>? get treatment;
  @override
  @JsonKey(ignore: true)
  _$AttackModelCopyWith<_AttackModel> get copyWith =>
      throw _privateConstructorUsedError;
}
