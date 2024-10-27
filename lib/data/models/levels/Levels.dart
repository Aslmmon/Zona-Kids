import 'package:json_annotation/json_annotation.dart';

part 'Levels.g.dart';

@JsonSerializable()
class Levels {
  String id;
  String image;

  Levels({
    required this.id,
    required this.image,
  });

  factory Levels.fromJson(Map<String, dynamic> json) => _$LevelsFromJson(json);

  Map<String, dynamic> toJson() => _$LevelsToJson(this);
}
