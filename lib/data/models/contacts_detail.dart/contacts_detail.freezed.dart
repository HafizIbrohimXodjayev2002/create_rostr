// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contacts_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactsDetail _$ContactsDetailFromJson(Map<String, dynamic> json) {
  return _ContactsDetail.fromJson(json);
}

/// @nodoc
mixin _$ContactsDetail {
  String? get userLink => throw _privateConstructorUsedError;
  String? get contactName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactsDetailCopyWith<ContactsDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsDetailCopyWith<$Res> {
  factory $ContactsDetailCopyWith(
          ContactsDetail value, $Res Function(ContactsDetail) then) =
      _$ContactsDetailCopyWithImpl<$Res>;
  $Res call({String? userLink, String? contactName});
}

/// @nodoc
class _$ContactsDetailCopyWithImpl<$Res>
    implements $ContactsDetailCopyWith<$Res> {
  _$ContactsDetailCopyWithImpl(this._value, this._then);

  final ContactsDetail _value;
  // ignore: unused_field
  final $Res Function(ContactsDetail) _then;

  @override
  $Res call({
    Object? userLink = freezed,
    Object? contactName = freezed,
  }) {
    return _then(_value.copyWith(
      userLink: userLink == freezed
          ? _value.userLink
          : userLink // ignore: cast_nullable_to_non_nullable
              as String?,
      contactName: contactName == freezed
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ContactsDetailCopyWith<$Res>
    implements $ContactsDetailCopyWith<$Res> {
  factory _$$_ContactsDetailCopyWith(
          _$_ContactsDetail value, $Res Function(_$_ContactsDetail) then) =
      __$$_ContactsDetailCopyWithImpl<$Res>;
  @override
  $Res call({String? userLink, String? contactName});
}

/// @nodoc
class __$$_ContactsDetailCopyWithImpl<$Res>
    extends _$ContactsDetailCopyWithImpl<$Res>
    implements _$$_ContactsDetailCopyWith<$Res> {
  __$$_ContactsDetailCopyWithImpl(
      _$_ContactsDetail _value, $Res Function(_$_ContactsDetail) _then)
      : super(_value, (v) => _then(v as _$_ContactsDetail));

  @override
  _$_ContactsDetail get _value => super._value as _$_ContactsDetail;

  @override
  $Res call({
    Object? userLink = freezed,
    Object? contactName = freezed,
  }) {
    return _then(_$_ContactsDetail(
      userLink: userLink == freezed
          ? _value.userLink
          : userLink // ignore: cast_nullable_to_non_nullable
              as String?,
      contactName: contactName == freezed
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactsDetail
    with DiagnosticableTreeMixin
    implements _ContactsDetail {
  const _$_ContactsDetail({this.userLink, this.contactName});

  factory _$_ContactsDetail.fromJson(Map<String, dynamic> json) =>
      _$$_ContactsDetailFromJson(json);

  @override
  final String? userLink;
  @override
  final String? contactName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactsDetail(userLink: $userLink, contactName: $contactName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactsDetail'))
      ..add(DiagnosticsProperty('userLink', userLink))
      ..add(DiagnosticsProperty('contactName', contactName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactsDetail &&
            const DeepCollectionEquality().equals(other.userLink, userLink) &&
            const DeepCollectionEquality()
                .equals(other.contactName, contactName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userLink),
      const DeepCollectionEquality().hash(contactName));

  @JsonKey(ignore: true)
  @override
  _$$_ContactsDetailCopyWith<_$_ContactsDetail> get copyWith =>
      __$$_ContactsDetailCopyWithImpl<_$_ContactsDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactsDetailToJson(
      this,
    );
  }
}

abstract class _ContactsDetail implements ContactsDetail {
  const factory _ContactsDetail(
      {final String? userLink, final String? contactName}) = _$_ContactsDetail;

  factory _ContactsDetail.fromJson(Map<String, dynamic> json) =
      _$_ContactsDetail.fromJson;

  @override
  String? get userLink;
  @override
  String? get contactName;
  @override
  @JsonKey(ignore: true)
  _$$_ContactsDetailCopyWith<_$_ContactsDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
