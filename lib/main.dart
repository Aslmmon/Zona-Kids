import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:zoon_kids/data/network/service/ApiService.dart';
import 'package:zoon_kids/data/providers/providers.dart';
import 'package:zoon_kids/ui/welcomeStart/WelcomeScreen.dart';

import 'ui/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  _setupLogging();

  final service = ApiService();

  runApp(ProviderScope(
    overrides: [serviceProvider.overrideWithValue(service)],
    child: MyApp(),
  ));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    final theme = ref.watch(themeProvider);

    return MaterialApp(
        title: 'Zona Kids',
        theme: theme,
        home: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle(
              systemNavigationBarColor: Colors.white,
              statusBarColor: Colors.transparent,
            ),
            child: WelcomeScreen()));
  }
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}
