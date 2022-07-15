import 'package:flutter/material.dart';
import 'k.dart';

class AppTheme {
  static final theme = ThemeData(
    textTheme: const TextTheme(
        headline1: TextStyle(color: Colors.white, fontSize: 48, fontFamily: K.fontFamilyRoboto, fontWeight: FontWeight.bold),
        headline2: TextStyle(
            color: Colors.white,
            fontSize: 48,
            fontFamily: K.fontFamilyRoboto,
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.bold),
        headline3: TextStyle(fontFamily: K.fontFamilyVegan, color: Colors.black, fontSize: 32),
        headline4: TextStyle(color: Colors.black, fontSize: 38, fontFamily: K.fontFamilyRoboto)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 72.0),
        primary: Colors.black26,
      ),
    ),
  );
}
