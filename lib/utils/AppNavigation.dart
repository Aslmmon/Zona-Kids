import 'package:flutter/material.dart';

class AppNavigation {
  static navigateToDestination(BuildContext context, Widget destination) =>
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => destination));

  static navigateToDestinationCompletely(
      BuildContext context, Widget destination) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => destination,
        ),
        (Route<dynamic> route) => false);
  }
}
