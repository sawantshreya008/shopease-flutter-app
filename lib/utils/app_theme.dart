import 'package:flutter/material.dart';

class AppTheme {
  static const Color navy = Color(0xFF0B1F3A);
  static const Color royalBlue = Color(0xFF123E7A);
  static const Color deepBlue = Color(0xFF071A2F);
  static const Color gold = Color(0xFFF4C95D);
  static const Color softGold = Color(0xFFFFE7A8);
  static const Color lightBg = Color(0xFFF7F8FC);
  static const Color white = Color(0xFFFFFFFF);
  static const Color textSoft = Color(0xFF5C6B83);
  static const Color line = Color(0xFFE7EBF3);

  static ThemeData get themeData {
    final base = ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: lightBg,
      colorScheme: ColorScheme.fromSeed(
        seedColor: royalBlue,
        brightness: Brightness.light,
      ),
      fontFamily: 'Roboto',
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        elevation: 0,
      ),
    );

    return base.copyWith(
      textTheme: base.textTheme.apply(bodyColor: navy, displayColor: navy),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 16,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xFFE9EEF7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: royalBlue, width: 1.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.redAccent),
        ),
      ),
      cardTheme: const CardThemeData(
        margin: EdgeInsets.zero,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(22)),
        ),
      ),
    );
  }
}
