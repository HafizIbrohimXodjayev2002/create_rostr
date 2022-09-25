import 'package:freezed_annotation/freezed_annotation.dart';

part 'notes.g.dart';
part 'notes.freezed.dart';

@freezed
class Notes with _$Notes {
  const factory Notes({
    String? name,
    String? description,
  }) = _Notes;

  factory Notes.fromJson(Map<String, dynamic> json) => _$NotesFromJson(json);
}