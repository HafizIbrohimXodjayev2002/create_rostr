// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'personal_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonalInfo _$PersonalInfoFromJson(Map<String, dynamic> json) {
  return _PersonalInfo.fromJson(json);
}

/// @nodoc
mixin _$PersonalInfo {
  String? get name => throw _privateConstructorUsedError;
  String? get dataOfBirth => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalInfoCopyWith<PersonalInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalInfoCopyWith<$Res> {
  factory $PersonalInfoCopyWith(
          PersonalInfo value, $Res Function(PersonalInfo) then) =
      _$PersonalInfoCopyWithImpl<$Res>;
  $Res call({String? name, String? dataOfBirth, String? description});
}

/// @nodoc
class _$PersonalInfoCopyWithImpl<$Res> implements $PersonalInfoCopyWith<$Res> {
  _$PersonalInfoCopyWithImpl(this._value, this._then);

  final PersonalInfo _value;
  // ignore: unused_field
  final $Res Function(PersonalInfo) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? dataOfBirth = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dataOfBirth: dataOfBirth == freezed
          ? _value.dataOfBirth
          : dataOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PersonalInfoCopyWith<$Res>
    implements $PersonalInfoCopyWith<$Res> {
  factory _$$_PersonalInfoCopyWith(
          _$_PersonalInfo value, $Res Function(_$_PersonalInfo) then) =
      __$$_PersonalInfoCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? dataOfBirth, String? description});
}

/// @nodoc
class __$$_PersonalInfoCopyWithImpl<$Res>
    extends _$PersonalInfoCopyWithImpl<$Res>
    implements _$$_PersonalInfoCopyWith<$Res> {
  __$$_PersonalInfoCopyWithImpl(
      _$_PersonalInfo _value, $Res Function(_$_PersonalInfo) _then)
      : super(_value, (v) => _then(v as _$_PersonalInfo));

  @override
  _$_PersonalInfo get _value => super._value as _$_PersonalInfo;

  @override
  $Res call({
    Object? name = freezed,
    Object? dataOfBirth = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_PersonalInfo(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dataOfBirth: dataOfBirth == freezed
          ? _value.dataOfBirth
          : dataOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonalInfo implements _PersonalInfo {
  const _$_PersonalInfo({this.name, this.dataOfBirth, this.description});

  factory _$_PersonalInfo.fromJson(Map<String, dynamic> json) =>
      _$$_PersonalInfoFromJson(json);

  @override
  final String? name;
  @override
  final String? dataOfBirth;
  @override
  final String? description;

  @override
  String toString() {
    return 'PersonalInfo(name: $name, dataOfBirth: $dataOfBirth, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonalInfo &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.dataOfBirth, dataOfBirth) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(dataOfBirth),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_PersonalInfoCopyWith<_$_PersonalInfo> get copyWith =>
      __$$_PersonalInfoCopyWithImpl<_$_PersonalInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonalInfoToJson(
      this,
    );
  }
}

abstract class _PersonalInfo implements PersonalInfo {
  const factory _PersonalInfo(
      {final String? name,
      final String? dataOfBirth,
      final String? description}) = _$_PersonalInfo;

  factory _PersonalInfo.fromJson(Map<String, dynamic> json) =
      _$_PersonalInfo.fromJson;

  @override
  String? get name;
  @override
  String? get dataOfBirth;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalInfoCopyWith<_$_PersonalInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
