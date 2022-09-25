// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contacts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactsInfo _$ContactsInfoFromJson(Map<String, dynamic> json) {
  return _ContactsInfo.fromJson(json);
}

/// @nodoc
mixin _$ContactsInfo {
  String? get link => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactsInfoCopyWith<ContactsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsInfoCopyWith<$Res> {
  factory $ContactsInfoCopyWith(
          ContactsInfo value, $Res Function(ContactsInfo) then) =
      _$ContactsInfoCopyWithImpl<$Res>;
  $Res call({String? link, String? phoneNumber});
}

/// @nodoc
class _$ContactsInfoCopyWithImpl<$Res> implements $ContactsInfoCopyWith<$Res> {
  _$ContactsInfoCopyWithImpl(this._value, this._then);

  final ContactsInfo _value;
  // ignore: unused_field
  final $Res Function(ContactsInfo) _then;

  @override
  $Res call({
    Object? link = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ContactsInfoCopyWith<$Res>
    implements $ContactsInfoCopyWith<$Res> {
  factory _$$_ContactsInfoCopyWith(
          _$_ContactsInfo value, $Res Function(_$_ContactsInfo) then) =
      __$$_ContactsInfoCopyWithImpl<$Res>;
  @override
  $Res call({String? link, String? phoneNumber});
}

/// @nodoc
class __$$_ContactsInfoCopyWithImpl<$Res>
    extends _$ContactsInfoCopyWithImpl<$Res>
    implements _$$_ContactsInfoCopyWith<$Res> {
  __$$_ContactsInfoCopyWithImpl(
      _$_ContactsInfo _value, $Res Function(_$_ContactsInfo) _then)
      : super(_value, (v) => _then(v as _$_ContactsInfo));

  @override
  _$_ContactsInfo get _value => super._value as _$_ContactsInfo;

  @override
  $Res call({
    Object? link = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_ContactsInfo(
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactsInfo implements _ContactsInfo {
  const _$_ContactsInfo({this.link, this.phoneNumber});

  factory _$_ContactsInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ContactsInfoFromJson(json);

  @override
  final String? link;
  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'ContactsInfo(link: $link, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactsInfo &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$$_ContactsInfoCopyWith<_$_ContactsInfo> get copyWith =>
      __$$_ContactsInfoCopyWithImpl<_$_ContactsInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactsInfoToJson(
      this,
    );
  }
}

abstract class _ContactsInfo implements ContactsInfo {
  const factory _ContactsInfo({final String? link, final String? phoneNumber}) =
      _$_ContactsInfo;

  factory _ContactsInfo.fromJson(Map<String, dynamic> json) =
      _$_ContactsInfo.fromJson;

  @override
  String? get link;
  @override
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_ContactsInfoCopyWith<_$_ContactsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
