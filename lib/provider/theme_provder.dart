import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  var _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  var _isChanged = false;

  bool get isChanged => _isChanged;

  void themeChanger(newTheme) {
    _themeMode = newTheme;
    _isChanged = !_isChanged;
    notifyListeners();
  }
}
