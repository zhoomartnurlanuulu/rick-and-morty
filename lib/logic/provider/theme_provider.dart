import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
  bool isTheme = false;
  void setTheme({required String isDarkSet, required BuildContext context}) {
    switch (isDarkSet) {
      case 'light':
        themeMode = ThemeMode.light;
        break;
      case 'dark':
        themeMode = ThemeMode.dark;
        break;
      case 'system':
        themeMode = ThemeMode.system;
        break;
      case 'eco':
        break;
      default:
        themeMode = ThemeMode.system;
    }
    notifyListeners();
  }
}
