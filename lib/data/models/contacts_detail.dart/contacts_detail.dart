import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contacts_detail.freezed.dart';
part 'contacts_detail.g.dart';

@freezed
class ContactsDetail with _$ContactsDetail{
  const factory ContactsDetail({
    String? userLink,
    String? contactName,
  }) = _ContactsDetail;

  factory ContactsDetail.fromJson(Map<String, dynamic> json) => _$ContactsDetailFromJson(json);

}