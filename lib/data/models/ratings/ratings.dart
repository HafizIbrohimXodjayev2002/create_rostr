import 'package:freezed_annotation/freezed_annotation.dart';

part 'ratings.freezed.dart';
part 'ratings.g.dart';

@freezed
class Ratings with _$Ratings{
  const factory Ratings({
    String? ratingName,
    int? rated,
  }) = _Ratings;

  factory Ratings.fromJson(Map<String, dynamic> json) => _$RatingsFromJson(json);
}