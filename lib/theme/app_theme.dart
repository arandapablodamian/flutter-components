

import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.green;

  static ThemeData lightTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.indigo,
    appBarTheme: const AppBarTheme(
      color: Colors.red,
      elevation: 0
      ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom( primary: Colors.red[700])
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.indigo,
        shape: const StadiumBorder(),
        elevation: 0
      )
    )
  );
}