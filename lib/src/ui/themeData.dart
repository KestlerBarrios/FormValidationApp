import 'package:flutter/material.dart';

ThemeData themeDataCustom() {
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.grey[300],
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: Colors.indigo,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.indigo,
      elevation: 0,
    ),
  );
}
