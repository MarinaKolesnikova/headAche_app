// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_dictionary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainDictionary _$MainDictionaryFromJson(Map<String, dynamic> json) {
  return _MainDictionary.fromJson(json);
}

/// @nodoc
class _$MainDictionaryTearOff {
  const _$MainDictionaryTearOff();

  _MainDictionary call(
      {@JsonKey(name: 'tab_bar') required TabBarDictionary tabBarDictionary}) {
    return _MainDictionary(
      tabBarDictionary: tabBarDictionary,
    );
  }

  MainDictionary fromJson(Map<String, Object?> json) {
    return MainDictionary.fromJson(json);
  }
}

/// @nodoc
const $MainDictionary = _$MainDictionaryTearOff();

/// @nodoc
mixin _$MainDictionary {
  @JsonKey(name: 'tab_bar')
  TabBarDictionary get tabBarDictionary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainDictionaryCopyWith<MainDictionary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainDictionaryCopyWith<$Res> {
  factory $MainDictionaryCopyWith(
          MainDictionary value, $Res Function(MainDictionary) then) =
      _$MainDictionaryCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'tab_bar') TabBarDictionary tabBarDictionary});

  $TabBarDictionaryCopyWith<$Res> get tabBarDictionary;
}

/// @nodoc
class _$MainDictionaryCopyWithImpl<$Res>
    implements $MainDictionaryCopyWith<$Res> {
  _$MainDictionaryCopyWithImpl(this._value, this._then);

  final MainDictionary _value;
  // ignore: unused_field
  final $Res Function(MainDictionary) _then;

  @override
  $Res call({
    Object? tabBarDictionary = freezed,
  }) {
    return _then(_value.copyWith(
      tabBarDictionary: tabBarDictionary == freezed
          ? _value.tabBarDictionary
          : tabBarDictionary // ignore: cast_nullable_to_non_nullable
              as TabBarDictionary,
    ));
  }

  @override
  $TabBarDictionaryCopyWith<$Res> get tabBarDictionary {
    return $TabBarDictionaryCopyWith<$Res>(_value.tabBarDictionary, (value) {
      return _then(_value.copyWith(tabBarDictionary: value));
    });
  }
}

/// @nodoc
abstract class _$MainDictionaryCopyWith<$Res>
    implements $MainDictionaryCopyWith<$Res> {
  factory _$MainDictionaryCopyWith(
          _MainDictionary value, $Res Function(_MainDictionary) then) =
      __$MainDictionaryCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'tab_bar') TabBarDictionary tabBarDictionary});

  @override
  $TabBarDictionaryCopyWith<$Res> get tabBarDictionary;
}

/// @nodoc
class __$MainDictionaryCopyWithImpl<$Res>
    extends _$MainDictionaryCopyWithImpl<$Res>
    implements _$MainDictionaryCopyWith<$Res> {
  __$MainDictionaryCopyWithImpl(
      _MainDictionary _value, $Res Function(_MainDictionary) _then)
      : super(_value, (v) => _then(v as _MainDictionary));

  @override
  _MainDictionary get _value => super._value as _MainDictionary;

  @override
  $Res call({
    Object? tabBarDictionary = freezed,
  }) {
    return _then(_MainDictionary(
      tabBarDictionary: tabBarDictionary == freezed
          ? _value.tabBarDictionary
          : tabBarDictionary // ignore: cast_nullable_to_non_nullable
              as TabBarDictionary,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_MainDictionary implements _MainDictionary {
  const _$_MainDictionary(
      {@JsonKey(name: 'tab_bar') required this.tabBarDictionary});

  factory _$_MainDictionary.fromJson(Map<String, dynamic> json) =>
      _$$_MainDictionaryFromJson(json);

  @override
  @JsonKey(name: 'tab_bar')
  final TabBarDictionary tabBarDictionary;

  @override
  String toString() {
    return 'MainDictionary(tabBarDictionary: $tabBarDictionary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MainDictionary &&
            const DeepCollectionEquality()
                .equals(other.tabBarDictionary, tabBarDictionary));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(tabBarDictionary));

  @JsonKey(ignore: true)
  @override
  _$MainDictionaryCopyWith<_MainDictionary> get copyWith =>
      __$MainDictionaryCopyWithImpl<_MainDictionary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainDictionaryToJson(this);
  }
}

abstract class _MainDictionary implements MainDictionary {
  const factory _MainDictionary(
      {@JsonKey(name: 'tab_bar')
          required TabBarDictionary tabBarDictionary}) = _$_MainDictionary;

  factory _MainDictionary.fromJson(Map<String, dynamic> json) =
      _$_MainDictionary.fromJson;

  @override
  @JsonKey(name: 'tab_bar')
  TabBarDictionary get tabBarDictionary;
  @override
  @JsonKey(ignore: true)
  _$MainDictionaryCopyWith<_MainDictionary> get copyWith =>
      throw _privateConstructorUsedError;
}
