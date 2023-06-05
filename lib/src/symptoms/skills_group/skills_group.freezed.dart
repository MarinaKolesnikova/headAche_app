// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'skills_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SymptomsGroup _$SymptomsGroupFromJson(Map<String, dynamic> json) {
  return _SkillsGroup.fromJson(json);
}

/// @nodoc
class _$SymptomsGroupTearOff {
  const _$SymptomsGroupTearOff();

  _SkillsGroup call(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'symptoms') required List<Symptom> skills,
      @JsonKey(name: 'name') required String groupName}) {
    return _SkillsGroup(
      id: id,
      skills: skills,
      groupName: groupName,
    );
  }

  SymptomsGroup fromJson(Map<String, Object?> json) {
    return SymptomsGroup.fromJson(json);
  }
}

/// @nodoc
const $SymptomsGroup = _$SymptomsGroupTearOff();

/// @nodoc
mixin _$SymptomsGroup {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'symptoms')
  List<Symptom> get skills => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get groupName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SymptomsGroupCopyWith<SymptomsGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomsGroupCopyWith<$Res> {
  factory $SymptomsGroupCopyWith(
          SymptomsGroup value, $Res Function(SymptomsGroup) then) =
      _$SymptomsGroupCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'symptoms') List<Symptom> skills,
      @JsonKey(name: 'name') String groupName});
}

/// @nodoc
class _$SymptomsGroupCopyWithImpl<$Res>
    implements $SymptomsGroupCopyWith<$Res> {
  _$SymptomsGroupCopyWithImpl(this._value, this._then);

  final SymptomsGroup _value;
  // ignore: unused_field
  final $Res Function(SymptomsGroup) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? skills = freezed,
    Object? groupName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      skills: skills == freezed
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Symptom>,
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SkillsGroupCopyWith<$Res>
    implements $SymptomsGroupCopyWith<$Res> {
  factory _$SkillsGroupCopyWith(
          _SkillsGroup value, $Res Function(_SkillsGroup) then) =
      __$SkillsGroupCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'symptoms') List<Symptom> skills,
      @JsonKey(name: 'name') String groupName});
}

/// @nodoc
class __$SkillsGroupCopyWithImpl<$Res> extends _$SymptomsGroupCopyWithImpl<$Res>
    implements _$SkillsGroupCopyWith<$Res> {
  __$SkillsGroupCopyWithImpl(
      _SkillsGroup _value, $Res Function(_SkillsGroup) _then)
      : super(_value, (v) => _then(v as _SkillsGroup));

  @override
  _SkillsGroup get _value => super._value as _SkillsGroup;

  @override
  $Res call({
    Object? id = freezed,
    Object? skills = freezed,
    Object? groupName = freezed,
  }) {
    return _then(_SkillsGroup(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      skills: skills == freezed
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Symptom>,
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_SkillsGroup implements _SkillsGroup {
  const _$_SkillsGroup(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'symptoms') required this.skills,
      @JsonKey(name: 'name') required this.groupName});

  factory _$_SkillsGroup.fromJson(Map<String, dynamic> json) =>
      _$$_SkillsGroupFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'symptoms')
  final List<Symptom> skills;
  @override
  @JsonKey(name: 'name')
  final String groupName;

  @override
  String toString() {
    return 'SymptomsGroup(id: $id, skills: $skills, groupName: $groupName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SkillsGroup &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.skills, skills) &&
            const DeepCollectionEquality().equals(other.groupName, groupName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(skills),
      const DeepCollectionEquality().hash(groupName));

  @JsonKey(ignore: true)
  @override
  _$SkillsGroupCopyWith<_SkillsGroup> get copyWith =>
      __$SkillsGroupCopyWithImpl<_SkillsGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SkillsGroupToJson(this);
  }
}

abstract class _SkillsGroup implements SymptomsGroup {
  const factory _SkillsGroup(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'symptoms') required List<Symptom> skills,
      @JsonKey(name: 'name') required String groupName}) = _$_SkillsGroup;

  factory _SkillsGroup.fromJson(Map<String, dynamic> json) =
      _$_SkillsGroup.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'symptoms')
  List<Symptom> get skills;
  @override
  @JsonKey(name: 'name')
  String get groupName;
  @override
  @JsonKey(ignore: true)
  _$SkillsGroupCopyWith<_SkillsGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
