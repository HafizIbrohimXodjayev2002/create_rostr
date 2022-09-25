import 'package:freezed_annotation/freezed_annotation.dart';

part 'contacts.freezed.dart';
part 'contacts.g.dart';

@freezed
class ContactsInfo with _$ContactsInfo {
  const factory ContactsInfo({
    String? link,
    String? phoneNumber,
  }) = _ContactsInfo;

  factory ContactsInfo.fromJson(Map<String, dynamic> json) => _$ContactsInfoFromJson(json);
}