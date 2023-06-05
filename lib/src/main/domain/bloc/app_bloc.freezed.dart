// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call(
      {required Completer<dynamic> appLoaded,
      required bool connectionTrigger,
      Locale? locale}) {
    return _AppState(
      appLoaded: appLoaded,
      connectionTrigger: connectionTrigger,
      locale: locale,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  Completer<dynamic> get appLoaded => throw _privateConstructorUsedError;
  bool get connectionTrigger => throw _privateConstructorUsedError;
  Locale? get locale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {Completer<dynamic> appLoaded, bool connectionTrigger, Locale? locale});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? appLoaded = freezed,
    Object? connectionTrigger = freezed,
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      appLoaded: appLoaded == freezed
          ? _value.appLoaded
          : appLoaded // ignore: cast_nullable_to_non_nullable
              as Completer<dynamic>,
      connectionTrigger: connectionTrigger == freezed
          ? _value.connectionTrigger
          : connectionTrigger // ignore: cast_nullable_to_non_nullable
              as bool,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Completer<dynamic> appLoaded, bool connectionTrigger, Locale? locale});
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object? appLoaded = freezed,
    Object? connectionTrigger = freezed,
    Object? locale = freezed,
  }) {
    return _then(_AppState(
      appLoaded: appLoaded == freezed
          ? _value.appLoaded
          : appLoaded // ignore: cast_nullable_to_non_nullable
              as Completer<dynamic>,
      connectionTrigger: connectionTrigger == freezed
          ? _value.connectionTrigger
          : connectionTrigger // ignore: cast_nullable_to_non_nullable
              as bool,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc

class _$_AppState implements _AppState {
  const _$_AppState(
      {required this.appLoaded, required this.connectionTrigger, this.locale});

  @override
  final Completer<dynamic> appLoaded;
  @override
  final bool connectionTrigger;
  @override
  final Locale? locale;

  @override
  String toString() {
    return 'AppState(appLoaded: $appLoaded, connectionTrigger: $connectionTrigger, locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppState &&
            const DeepCollectionEquality().equals(other.appLoaded, appLoaded) &&
            const DeepCollectionEquality()
                .equals(other.connectionTrigger, connectionTrigger) &&
            const DeepCollectionEquality().equals(other.locale, locale));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(appLoaded),
      const DeepCollectionEquality().hash(connectionTrigger),
      const DeepCollectionEquality().hash(locale));

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {required Completer<dynamic> appLoaded,
      required bool connectionTrigger,
      Locale? locale}) = _$_AppState;

  @override
  Completer<dynamic> get appLoaded;
  @override
  bool get connectionTrigger;
  @override
  Locale? get locale;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
