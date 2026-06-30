import 'package:flutter/material.dart';
class ThemeProvider
    extends ChangeNotifier {

  ThemeMode mode =
      ThemeMode.system;

  void setTheme(
      ThemeMode value) {
    mode = value;
    notifyListeners();
  }
}