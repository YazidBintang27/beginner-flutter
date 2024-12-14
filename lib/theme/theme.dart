import 'package:flutter/material.dart';

ThemeData buildThemeData() {
  return ThemeData(
    primaryColor: const Color(0xFF5BDE30),
    scaffoldBackgroundColor: Colors.white,
    useMaterial3: true,
    textTheme: const TextTheme(
      headlineMedium: TextStyle(color: Color(0xFF2C2C2C), fontSize: 16, fontWeight: FontWeight.w500),
      bodyMedium: TextStyle(color: Color(0xFF2C2C2C), fontSize: 14, fontWeight: FontWeight.w400)
    ),
    fontFamily: 'Opensans'
  );
}
