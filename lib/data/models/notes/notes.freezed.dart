// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Notes _$NotesFromJson(Map<String, dynamic> json) {
  return _Notes.fromJson(json);
}

/// @nodoc
mixin _$Notes {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotesCopyWith<Notes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesCopyWith<$Res> {
  factory $NotesCopyWith(Notes value, $Res Function(Notes) then) =
      _$NotesCopyWithImpl<$Res>;
  $Res call({String? name, String? description});
}

/// @nodoc
class _$NotesCopyWithImpl<$Res> implements $NotesCopyWith<$Res> {
  _$NotesCopyWithImpl(this._value, this._then);

  final Notes _value;
  // ignore: unused_field
  final $Res Function(Notes) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_NotesCopyWith<$Res> implements $NotesCopyWith<$Res> {
  factory _$$_NotesCopyWith(_$_Notes value, $Res Function(_$_Notes) then) =
      __$$_NotesCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? description});
}

/// @nodoc
class __$$_NotesCopyWithImpl<$Res> extends _$NotesCopyWithImpl<$Res>
    implements _$$_NotesCopyWith<$Res> {
  __$$_NotesCopyWithImpl(_$_Notes _value, $Res Function(_$_Notes) _then)
      : super(_value, (v) => _then(v as _$_Notes));

  @override
  _$_Notes get _value => super._value as _$_Notes;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_Notes(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$_Notes implements _Notes {
  const _$_Notes({this.name, this.description});

  factory _$_Notes.fromJson(Map<String, dynamic> json) =>
      _$$_NotesFromJson(json);

  @override
  final String? name;
  @override
  final String? description;

  @override
  String toString() {
    return 'Notes(name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Notes &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_NotesCopyWith<_$_Notes> get copyWith =>
      __$$_NotesCopyWithImpl<_$_Notes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotesToJson(
      this,
    );
  }
}

abstract class _Notes implements Notes {
  const factory _Notes({final String? name, final String? description}) =
      _$_Notes;

  factory _Notes.fromJson(Map<String, dynamic> json) = _$_Notes.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_NotesCopyWith<_$_Notes> get copyWith =>
      throw _privateConstructorUsedError;
}
