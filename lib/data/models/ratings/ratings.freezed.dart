// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ratings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ratings _$RatingsFromJson(Map<String, dynamic> json) {
  return _Ratings.fromJson(json);
}

/// @nodoc
mixin _$Ratings {
  String? get ratingName => throw _privateConstructorUsedError;
  int? get rated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingsCopyWith<Ratings> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingsCopyWith<$Res> {
  factory $RatingsCopyWith(Ratings value, $Res Function(Ratings) then) =
      _$RatingsCopyWithImpl<$Res>;
  $Res call({String? ratingName, int? rated});
}

/// @nodoc
class _$RatingsCopyWithImpl<$Res> implements $RatingsCopyWith<$Res> {
  _$RatingsCopyWithImpl(this._value, this._then);

  final Ratings _value;
  // ignore: unused_field
  final $Res Function(Ratings) _then;

  @override
  $Res call({
    Object? ratingName = freezed,
    Object? rated = freezed,
  }) {
    return _then(_value.copyWith(
      ratingName: ratingName == freezed
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String?,
      rated: rated == freezed
          ? _value.rated
          : rated // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_RatingsCopyWith<$Res> implements $RatingsCopyWith<$Res> {
  factory _$$_RatingsCopyWith(
          _$_Ratings value, $Res Function(_$_Ratings) then) =
      __$$_RatingsCopyWithImpl<$Res>;
  @override
  $Res call({String? ratingName, int? rated});
}

/// @nodoc
class __$$_RatingsCopyWithImpl<$Res> extends _$RatingsCopyWithImpl<$Res>
    implements _$$_RatingsCopyWith<$Res> {
  __$$_RatingsCopyWithImpl(_$_Ratings _value, $Res Function(_$_Ratings) _then)
      : super(_value, (v) => _then(v as _$_Ratings));

  @override
  _$_Ratings get _value => super._value as _$_Ratings;

  @override
  $Res call({
    Object? ratingName = freezed,
    Object? rated = freezed,
  }) {
    return _then(_$_Ratings(
      ratingName: ratingName == freezed
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String?,
      rated: rated == freezed
          ? _value.rated
          : rated // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ratings implements _Ratings {
  const _$_Ratings({this.ratingName, this.rated});

  factory _$_Ratings.fromJson(Map<String, dynamic> json) =>
      _$$_RatingsFromJson(json);

  @override
  final String? ratingName;
  @override
  final int? rated;

  @override
  String toString() {
    return 'Ratings(ratingName: $ratingName, rated: $rated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ratings &&
            const DeepCollectionEquality()
                .equals(other.ratingName, ratingName) &&
            const DeepCollectionEquality().equals(other.rated, rated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ratingName),
      const DeepCollectionEquality().hash(rated));

  @JsonKey(ignore: true)
  @override
  _$$_RatingsCopyWith<_$_Ratings> get copyWith =>
      __$$_RatingsCopyWithImpl<_$_Ratings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RatingsToJson(
      this,
    );
  }
}

abstract class _Ratings implements Ratings {
  const factory _Ratings({final String? ratingName, final int? rated}) =
      _$_Ratings;

  factory _Ratings.fromJson(Map<String, dynamic> json) = _$_Ratings.fromJson;

  @override
  String? get ratingName;
  @override
  int? get rated;
  @override
  @JsonKey(ignore: true)
  _$$_RatingsCopyWith<_$_Ratings> get copyWith =>
      throw _privateConstructorUsedError;
}
