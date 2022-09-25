// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Dates _$DatesFromJson(Map<String, dynamic> json) {
  return _Dates.fromJson(json);
}

/// @nodoc
mixin _$Dates {
  String? get eventName => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get dataOfEvent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatesCopyWith<Dates> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatesCopyWith<$Res> {
  factory $DatesCopyWith(Dates value, $Res Function(Dates) then) =
      _$DatesCopyWithImpl<$Res>;
  $Res call({String? eventName, String? description, String? dataOfEvent});
}

/// @nodoc
class _$DatesCopyWithImpl<$Res> implements $DatesCopyWith<$Res> {
  _$DatesCopyWithImpl(this._value, this._then);

  final Dates _value;
  // ignore: unused_field
  final $Res Function(Dates) _then;

  @override
  $Res call({
    Object? eventName = freezed,
    Object? description = freezed,
    Object? dataOfEvent = freezed,
  }) {
    return _then(_value.copyWith(
      eventName: eventName == freezed
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dataOfEvent: dataOfEvent == freezed
          ? _value.dataOfEvent
          : dataOfEvent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DatesCopyWith<$Res> implements $DatesCopyWith<$Res> {
  factory _$$_DatesCopyWith(_$_Dates value, $Res Function(_$_Dates) then) =
      __$$_DatesCopyWithImpl<$Res>;
  @override
  $Res call({String? eventName, String? description, String? dataOfEvent});
}

/// @nodoc
class __$$_DatesCopyWithImpl<$Res> extends _$DatesCopyWithImpl<$Res>
    implements _$$_DatesCopyWith<$Res> {
  __$$_DatesCopyWithImpl(_$_Dates _value, $Res Function(_$_Dates) _then)
      : super(_value, (v) => _then(v as _$_Dates));

  @override
  _$_Dates get _value => super._value as _$_Dates;

  @override
  $Res call({
    Object? eventName = freezed,
    Object? description = freezed,
    Object? dataOfEvent = freezed,
  }) {
    return _then(_$_Dates(
      eventName: eventName == freezed
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dataOfEvent: dataOfEvent == freezed
          ? _value.dataOfEvent
          : dataOfEvent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dates implements _Dates {
  const _$_Dates({this.eventName, this.description, this.dataOfEvent});

  factory _$_Dates.fromJson(Map<String, dynamic> json) =>
      _$$_DatesFromJson(json);

  @override
  final String? eventName;
  @override
  final String? description;
  @override
  final String? dataOfEvent;

  @override
  String toString() {
    return 'Dates(eventName: $eventName, description: $description, dataOfEvent: $dataOfEvent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dates &&
            const DeepCollectionEquality().equals(other.eventName, eventName) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.dataOfEvent, dataOfEvent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(eventName),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(dataOfEvent));

  @JsonKey(ignore: true)
  @override
  _$$_DatesCopyWith<_$_Dates> get copyWith =>
      __$$_DatesCopyWithImpl<_$_Dates>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatesToJson(
      this,
    );
  }
}

abstract class _Dates implements Dates {
  const factory _Dates(
      {final String? eventName,
      final String? description,
      final String? dataOfEvent}) = _$_Dates;

  factory _Dates.fromJson(Map<String, dynamic> json) = _$_Dates.fromJson;

  @override
  String? get eventName;
  @override
  String? get description;
  @override
  String? get dataOfEvent;
  @override
  @JsonKey(ignore: true)
  _$$_DatesCopyWith<_$_Dates> get copyWith =>
      throw _privateConstructorUsedError;
}
