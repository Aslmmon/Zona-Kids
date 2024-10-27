import 'package:json_annotation/json_annotation.dart';

part 'Levels.g.dart';

@JsonSerializable()
class Levels {
  String? id;
  String? image;
  String? animated_image;

  Levels({
    required this.id,
    required this.image,
    required this.animated_image,
  });

  factory Levels.fromJson(Map<String, dynamic> json) => _$LevelsFromJson(json);

  Map<String, dynamic> toJson() => _$LevelsToJson(this);
}
