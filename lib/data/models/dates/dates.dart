import 'package:freezed_annotation/freezed_annotation.dart';

part 'dates.freezed.dart';
part 'dates.g.dart';

@freezed
class Dates with _$Dates{
  const factory Dates({
    String? eventName,
    String? description,
    String? dataOfEvent,
  }) = _Dates;

  factory Dates.fromJson(Map<String, dynamic> json) => _$DatesFromJson(json);
}