import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zoon_kids/ui/child_name/ChildNameScreen.dart';
import 'package:zoon_kids/ui/home/homeScreen.dart';
import 'package:zoon_kids/ui/splash/SplashScreen.dart';
import 'package:zoon_kids/ui/welcomeStart/WelcomeScreen.dart';

class AppNavigation {
  /// The route configuration.
  static final GoRouter appRouter = GoRouter(
    initialLocation: '/welcome',
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return Splashscreen();
        },
      ),
      GoRoute(
          path: '/welcome',
          builder: (BuildContext context, GoRouterState state) {
            return WelcomeScreen(
              onNextClicked: () {
                context.push('/child_name');
              },
            );
          }),
      GoRoute(
          path: '/child_name',
          builder: (BuildContext context, GoRouterState state) {
            return ChildNameScreen();
          }),
    ],
  );
}
