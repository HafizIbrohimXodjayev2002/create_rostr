import 'package:freezed_annotation/freezed_annotation.dart';

part 'personal_info.freezed.dart';
part 'personal_info.g.dart';

@freezed
class PersonalInfo with _$PersonalInfo {
  const factory PersonalInfo({
    String? name,
    String? dataOfBirth,
    String? description,
  }) = _PersonalInfo;

  factory PersonalInfo.fromJson(Map<String, dynamic> json)
      => _$PersonalInfoFromJson(json);
}