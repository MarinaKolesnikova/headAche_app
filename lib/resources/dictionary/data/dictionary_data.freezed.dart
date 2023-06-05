// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dictionary_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DictionaryData _$DictionaryDataFromJson(Map<String, dynamic> json) {
  return _DictionaryData.fromJson(json);
}

/// @nodoc
class _$DictionaryDataTearOff {
  const _$DictionaryDataTearOff();

  _DictionaryData call(
      {@JsonKey(name: 'auth') required AuthDictionary auth,
      @JsonKey(name: 'main') required MainDictionary main,
      @JsonKey(name: 'validation') required ValidationDictionary validation,
      @JsonKey(name: 'messages') required MessagesDictionary messages,
      @JsonKey(name: 'home') required HomeDictionary home}) {
    return _DictionaryData(
      auth: auth,
      main: main,
      validation: validation,
      messages: messages,
      home: home,
    );
  }

  DictionaryData fromJson(Map<String, Object?> json) {
    return DictionaryData.fromJson(json);
  }
}

/// @nodoc
const $DictionaryData = _$DictionaryDataTearOff();

/// @nodoc
mixin _$DictionaryData {
  @JsonKey(name: 'auth')
  AuthDictionary get auth => throw _privateConstructorUsedError;
  @JsonKey(name: 'main')
  MainDictionary get main => throw _privateConstructorUsedError;
  @JsonKey(name: 'validation')
  ValidationDictionary get validation => throw _privateConstructorUsedError;
  @JsonKey(name: 'messages')
  MessagesDictionary get messages => throw _privateConstructorUsedError;
  @JsonKey(name: 'home')
  HomeDictionary get home => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DictionaryDataCopyWith<DictionaryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryDataCopyWith<$Res> {
  factory $DictionaryDataCopyWith(
          DictionaryData value, $Res Function(DictionaryData) then) =
      _$DictionaryDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'auth') AuthDictionary auth,
      @JsonKey(name: 'main') MainDictionary main,
      @JsonKey(name: 'validation') ValidationDictionary validation,
      @JsonKey(name: 'messages') MessagesDictionary messages,
      @JsonKey(name: 'home') HomeDictionary home});

  $AuthDictionaryCopyWith<$Res> get auth;
  $MainDictionaryCopyWith<$Res> get main;
  $ValidationDictionaryCopyWith<$Res> get validation;
  $MessagesDictionaryCopyWith<$Res> get messages;
  $HomeDictionaryCopyWith<$Res> get home;
}

/// @nodoc
class _$DictionaryDataCopyWithImpl<$Res>
    implements $DictionaryDataCopyWith<$Res> {
  _$DictionaryDataCopyWithImpl(this._value, this._then);

  final DictionaryData _value;
  // ignore: unused_field
  final $Res Function(DictionaryData) _then;

  @override
  $Res call({
    Object? auth = freezed,
    Object? main = freezed,
    Object? validation = freezed,
    Object? messages = freezed,
    Object? home = freezed,
  }) {
    return _then(_value.copyWith(
      auth: auth == freezed
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as AuthDictionary,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainDictionary,
      validation: validation == freezed
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as ValidationDictionary,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as MessagesDictionary,
      home: home == freezed
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as HomeDictionary,
    ));
  }

  @override
  $AuthDictionaryCopyWith<$Res> get auth {
    return $AuthDictionaryCopyWith<$Res>(_value.auth, (value) {
      return _then(_value.copyWith(auth: value));
    });
  }

  @override
  $MainDictionaryCopyWith<$Res> get main {
    return $MainDictionaryCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value));
    });
  }

  @override
  $ValidationDictionaryCopyWith<$Res> get validation {
    return $ValidationDictionaryCopyWith<$Res>(_value.validation, (value) {
      return _then(_value.copyWith(validation: value));
    });
  }

  @override
  $MessagesDictionaryCopyWith<$Res> get messages {
    return $MessagesDictionaryCopyWith<$Res>(_value.messages, (value) {
      return _then(_value.copyWith(messages: value));
    });
  }

  @override
  $HomeDictionaryCopyWith<$Res> get home {
    return $HomeDictionaryCopyWith<$Res>(_value.home, (value) {
      return _then(_value.copyWith(home: value));
    });
  }
}

/// @nodoc
abstract class _$DictionaryDataCopyWith<$Res>
    implements $DictionaryDataCopyWith<$Res> {
  factory _$DictionaryDataCopyWith(
          _DictionaryData value, $Res Function(_DictionaryData) then) =
      __$DictionaryDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'auth') AuthDictionary auth,
      @JsonKey(name: 'main') MainDictionary main,
      @JsonKey(name: 'validation') ValidationDictionary validation,
      @JsonKey(name: 'messages') MessagesDictionary messages,
      @JsonKey(name: 'home') HomeDictionary home});

  @override
  $AuthDictionaryCopyWith<$Res> get auth;
  @override
  $MainDictionaryCopyWith<$Res> get main;
  @override
  $ValidationDictionaryCopyWith<$Res> get validation;
  @override
  $MessagesDictionaryCopyWith<$Res> get messages;
  @override
  $HomeDictionaryCopyWith<$Res> get home;
}

/// @nodoc
class __$DictionaryDataCopyWithImpl<$Res>
    extends _$DictionaryDataCopyWithImpl<$Res>
    implements _$DictionaryDataCopyWith<$Res> {
  __$DictionaryDataCopyWithImpl(
      _DictionaryData _value, $Res Function(_DictionaryData) _then)
      : super(_value, (v) => _then(v as _DictionaryData));

  @override
  _DictionaryData get _value => super._value as _DictionaryData;

  @override
  $Res call({
    Object? auth = freezed,
    Object? main = freezed,
    Object? validation = freezed,
    Object? messages = freezed,
    Object? home = freezed,
  }) {
    return _then(_DictionaryData(
      auth: auth == freezed
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as AuthDictionary,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainDictionary,
      validation: validation == freezed
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as ValidationDictionary,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as MessagesDictionary,
      home: home == freezed
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as HomeDictionary,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_DictionaryData implements _DictionaryData {
  const _$_DictionaryData(
      {@JsonKey(name: 'auth') required this.auth,
      @JsonKey(name: 'main') required this.main,
      @JsonKey(name: 'validation') required this.validation,
      @JsonKey(name: 'messages') required this.messages,
      @JsonKey(name: 'home') required this.home});

  factory _$_DictionaryData.fromJson(Map<String, dynamic> json) =>
      _$$_DictionaryDataFromJson(json);

  @override
  @JsonKey(name: 'auth')
  final AuthDictionary auth;
  @override
  @JsonKey(name: 'main')
  final MainDictionary main;
  @override
  @JsonKey(name: 'validation')
  final ValidationDictionary validation;
  @override
  @JsonKey(name: 'messages')
  final MessagesDictionary messages;
  @override
  @JsonKey(name: 'home')
  final HomeDictionary home;

  @override
  String toString() {
    return 'DictionaryData(auth: $auth, main: $main, validation: $validation, messages: $messages, home: $home)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DictionaryData &&
            const DeepCollectionEquality().equals(other.auth, auth) &&
            const DeepCollectionEquality().equals(other.main, main) &&
            const DeepCollectionEquality()
                .equals(other.validation, validation) &&
            const DeepCollectionEquality().equals(other.messages, messages) &&
            const DeepCollectionEquality().equals(other.home, home));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(auth),
      const DeepCollectionEquality().hash(main),
      const DeepCollectionEquality().hash(validation),
      const DeepCollectionEquality().hash(messages),
      const DeepCollectionEquality().hash(home));

  @JsonKey(ignore: true)
  @override
  _$DictionaryDataCopyWith<_DictionaryData> get copyWith =>
      __$DictionaryDataCopyWithImpl<_DictionaryData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DictionaryDataToJson(this);
  }
}

abstract class _DictionaryData implements DictionaryData {
  const factory _DictionaryData(
      {@JsonKey(name: 'auth') required AuthDictionary auth,
      @JsonKey(name: 'main') required MainDictionary main,
      @JsonKey(name: 'validation') required ValidationDictionary validation,
      @JsonKey(name: 'messages') required MessagesDictionary messages,
      @JsonKey(name: 'home') required HomeDictionary home}) = _$_DictionaryData;

  factory _DictionaryData.fromJson(Map<String, dynamic> json) =
      _$_DictionaryData.fromJson;

  @override
  @JsonKey(name: 'auth')
  AuthDictionary get auth;
  @override
  @JsonKey(name: 'main')
  MainDictionary get main;
  @override
  @JsonKey(name: 'validation')
  ValidationDictionary get validation;
  @override
  @JsonKey(name: 'messages')
  MessagesDictionary get messages;
  @override
  @JsonKey(name: 'home')
  HomeDictionary get home;
  @override
  @JsonKey(ignore: true)
  _$DictionaryDataCopyWith<_DictionaryData> get copyWith =>
      throw _privateConstructorUsedError;
}
