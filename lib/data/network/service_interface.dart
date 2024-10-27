import 'package:zoon_kids/data/models/levels/Levels.dart';

abstract class ServiceInterface {
  Future<List<Levels>> getLevels();
}
