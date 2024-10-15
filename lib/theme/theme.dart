import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColorLight: Color(0xFF3D94A8),
  hintColor: Color(0xFFFF8431),
  dividerColor: Colors.black,
  indicatorColor: Colors.white,
  highlightColor: Color(0xFFEAE8E9),
  fontFamily: 'SummaryNotes',
  appBarTheme: const AppBarTheme(color: Colors.white),
  scaffoldBackgroundColor: Color(0xFFF5F5F5),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
    ),
  ),
  textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(fontSize: 20.0),
      titleMedium: GoogleFonts.poppins(fontSize: 16.0),
      titleSmall: GoogleFonts.poppins(fontSize: 14.0)),
  // ... other light theme properties
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.white,
  primaryColorLight: Colors.black,
  hintColor: Colors.amber,
  fontFamily: 'SummaryNotes',
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: const AppBarTheme(
    color: Colors.black,
  ),
  textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(fontSize: 20.0),
      titleMedium: GoogleFonts.poppins(fontSize: 16.0),
      titleSmall: GoogleFonts.poppins(fontSize: 14.0)),
  // ... other light theme properties
);

class ThemeProvider extends StateNotifier<ThemeData> {
  ThemeProvider()
      : super( lightTheme);
  // final SharedPreferences? pref;

  void toggleTheme(bool isDarkTheme) {
    state = isDarkTheme ? applyDarkThem(true) : applyDarkThem(false);
  }

  ThemeData applyDarkThem(bool isDarkTheme) {
    // pref?.setBool('isDarkTheme', isDarkTheme);
    return isDarkTheme ? darkTheme : lightTheme;
  }

}
//
final themeProvider = StateNotifierProvider<ThemeProvider, ThemeData>(
  (ref) => ThemeProvider(),
);
