import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zoon_kids/data/models/levels/Levels.dart';
import 'package:zoon_kids/data/network/service_interface.dart';
import 'package:zoon_kids/data/providers/providers.dart';
import 'package:zoon_kids/utils/Constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ApiService.g.dart';

/**
 * network providers providers
 */
class ApiService implements ServiceInterface {
  @override
  Future<List<Levels>> getLevels() async {
    final levels = <Levels>[];
    final jsonString = await rootBundle.loadString(homeLevelsApi);
    final levelsAsList = jsonDecode(jsonString) as List;

    for (final result in levelsAsList) {
      levels.add(Levels.fromJson(result));
    }
    await Future.delayed(const Duration(seconds: 1), () => {print('getting levels')});

    return levels;
  }
}

/**
 * ui providers
 */
@riverpod
Future<List<Levels>> levels(LevelsRef ref) =>
    ref.read(serviceProvider).getLevels();
