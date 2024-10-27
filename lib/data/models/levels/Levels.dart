import 'package:json_annotation/json_annotation.dart';
part 'Levels.g.dart';

@JsonSerializable()
class Levels {
  String id;
  String img;

  Levels({
    required this.id,
    required this.img,
  });

  factory Levels.fromJson(Map<String, dynamic> json) =>
      _$LevelsFromJson(json);

  Map<String, dynamic> toJson() => _$LevelsToJson(this);
}
