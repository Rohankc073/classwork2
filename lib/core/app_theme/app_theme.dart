import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.grey[100],
    fontFamily: 'Rockwell',
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Color(0xFF3579FF),
      elevation: 4,
      titleTextStyle: TextStyle(
        fontSize: 22,
        color: Colors.white,
        fontFamily: 'Rockwell',
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}
