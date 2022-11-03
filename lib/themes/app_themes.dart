import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(backgroundColor: Color(0xff152A3A)),
      scaffoldBackgroundColor: const Color(0xff06121E),
      primaryIconTheme: const IconThemeData(color: Colors.white, opacity: 0.1),
      textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      primaryColor: const Color(0xff152A3A),
      colorScheme: const ColorScheme.dark(),
      iconTheme: const IconThemeData(color: Color(0xff43D049), opacity: 0.1));
  static final lightTheme = ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(backgroundColor: Color(0xffffffff)),
      colorScheme: const ColorScheme.light(),
      textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      primaryIconTheme: const IconThemeData(color: Colors.black, opacity: 0.1),
      iconTheme: const IconThemeData(color: Color(0xff22A2BD), opacity: 0.1));
}
