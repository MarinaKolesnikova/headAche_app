// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tab_bar_dictionary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TabBarDictionary _$TabBarDictionaryFromJson(Map<String, dynamic> json) {
  return _TabBarDictionary.fromJson(json);
}

/// @nodoc
class _$TabBarDictionaryTearOff {
  const _$TabBarDictionaryTearOff();

  _TabBarDictionary call(
      {@JsonKey(name: 'home') required String home,
      @JsonKey(name: 'calendar') required String calendar,
      @JsonKey(name: 'advices') required String advices,
      @JsonKey(name: 'predictions') required String predictions}) {
    return _TabBarDictionary(
      home: home,
      calendar: calendar,
      advices: advices,
      predictions: predictions,
    );
  }

  TabBarDictionary fromJson(Map<String, Object?> json) {
    return TabBarDictionary.fromJson(json);
  }
}

/// @nodoc
const $TabBarDictionary = _$TabBarDictionaryTearOff();

/// @nodoc
mixin _$TabBarDictionary {
  @JsonKey(name: 'home')
  String get home => throw _privateConstructorUsedError;
  @JsonKey(name: 'calendar')
  String get calendar => throw _privateConstructorUsedError;
  @JsonKey(name: 'advices')
  String get advices => throw _privateConstructorUsedError;
  @JsonKey(name: 'predictions')
  String get predictions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TabBarDictionaryCopyWith<TabBarDictionary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabBarDictionaryCopyWith<$Res> {
  factory $TabBarDictionaryCopyWith(
          TabBarDictionary value, $Res Function(TabBarDictionary) then) =
      _$TabBarDictionaryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'home') String home,
      @JsonKey(name: 'calendar') String calendar,
      @JsonKey(name: 'advices') String advices,
      @JsonKey(name: 'predictions') String predictions});
}

/// @nodoc
class _$TabBarDictionaryCopyWithImpl<$Res>
    implements $TabBarDictionaryCopyWith<$Res> {
  _$TabBarDictionaryCopyWithImpl(this._value, this._then);

  final TabBarDictionary _value;
  // ignore: unused_field
  final $Res Function(TabBarDictionary) _then;

  @override
  $Res call({
    Object? home = freezed,
    Object? calendar = freezed,
    Object? advices = freezed,
    Object? predictions = freezed,
  }) {
    return _then(_value.copyWith(
      home: home == freezed
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as String,
      calendar: calendar == freezed
          ? _value.calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as String,
      advices: advices == freezed
          ? _value.advices
          : advices // ignore: cast_nullable_to_non_nullable
              as String,
      predictions: predictions == freezed
          ? _value.predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TabBarDictionaryCopyWith<$Res>
    implements $TabBarDictionaryCopyWith<$Res> {
  factory _$TabBarDictionaryCopyWith(
          _TabBarDictionary value, $Res Function(_TabBarDictionary) then) =
      __$TabBarDictionaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'home') String home,
      @JsonKey(name: 'calendar') String calendar,
      @JsonKey(name: 'advices') String advices,
      @JsonKey(name: 'predictions') String predictions});
}

/// @nodoc
class __$TabBarDictionaryCopyWithImpl<$Res>
    extends _$TabBarDictionaryCopyWithImpl<$Res>
    implements _$TabBarDictionaryCopyWith<$Res> {
  __$TabBarDictionaryCopyWithImpl(
      _TabBarDictionary _value, $Res Function(_TabBarDictionary) _then)
      : super(_value, (v) => _then(v as _TabBarDictionary));

  @override
  _TabBarDictionary get _value => super._value as _TabBarDictionary;

  @override
  $Res call({
    Object? home = freezed,
    Object? calendar = freezed,
    Object? advices = freezed,
    Object? predictions = freezed,
  }) {
    return _then(_TabBarDictionary(
      home: home == freezed
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as String,
      calendar: calendar == freezed
          ? _value.calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as String,
      advices: advices == freezed
          ? _value.advices
          : advices // ignore: cast_nullable_to_non_nullable
              as String,
      predictions: predictions == freezed
          ? _value.predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_TabBarDictionary implements _TabBarDictionary {
  const _$_TabBarDictionary(
      {@JsonKey(name: 'home') required this.home,
      @JsonKey(name: 'calendar') required this.calendar,
      @JsonKey(name: 'advices') required this.advices,
      @JsonKey(name: 'predictions') required this.predictions});

  factory _$_TabBarDictionary.fromJson(Map<String, dynamic> json) =>
      _$$_TabBarDictionaryFromJson(json);

  @override
  @JsonKey(name: 'home')
  final String home;
  @override
  @JsonKey(name: 'calendar')
  final String calendar;
  @override
  @JsonKey(name: 'advices')
  final String advices;
  @override
  @JsonKey(name: 'predictions')
  final String predictions;

  @override
  String toString() {
    return 'TabBarDictionary(home: $home, calendar: $calendar, advices: $advices, predictions: $predictions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TabBarDictionary &&
            const DeepCollectionEquality().equals(other.home, home) &&
            const DeepCollectionEquality().equals(other.calendar, calendar) &&
            const DeepCollectionEquality().equals(other.advices, advices) &&
            const DeepCollectionEquality()
                .equals(other.predictions, predictions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(home),
      const DeepCollectionEquality().hash(calendar),
      const DeepCollectionEquality().hash(advices),
      const DeepCollectionEquality().hash(predictions));

  @JsonKey(ignore: true)
  @override
  _$TabBarDictionaryCopyWith<_TabBarDictionary> get copyWith =>
      __$TabBarDictionaryCopyWithImpl<_TabBarDictionary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TabBarDictionaryToJson(this);
  }
}

abstract class _TabBarDictionary implements TabBarDictionary {
  const factory _TabBarDictionary(
          {@JsonKey(name: 'home') required String home,
          @JsonKey(name: 'calendar') required String calendar,
          @JsonKey(name: 'advices') required String advices,
          @JsonKey(name: 'predictions') required String predictions}) =
      _$_TabBarDictionary;

  factory _TabBarDictionary.fromJson(Map<String, dynamic> json) =
      _$_TabBarDictionary.fromJson;

  @override
  @JsonKey(name: 'home')
  String get home;
  @override
  @JsonKey(name: 'calendar')
  String get calendar;
  @override
  @JsonKey(name: 'advices')
  String get advices;
  @override
  @JsonKey(name: 'predictions')
  String get predictions;
  @override
  @JsonKey(ignore: true)
  _$TabBarDictionaryCopyWith<_TabBarDictionary> get copyWith =>
      throw _privateConstructorUsedError;
}
