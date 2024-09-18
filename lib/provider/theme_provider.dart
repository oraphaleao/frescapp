import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDarkMode = false;

  ThemeProvider() {
    // Aqui carrega o tema salvo quando o provider é inicializado.
    _loadThemePreferences();
  }

  void toggleTheme() {
    isDarkMode = !isDarkMode;
    notifyListeners();
    _saveThemePreferences();
  }

  ThemeData get currentTheme {
    return isDarkMode ? ThemeData.dark() : ThemeData.light();
  }

  Future<void> _saveThemePreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', isDarkMode);
  }

  Future<void> _loadThemePreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isDarkMode = prefs.getBool('isDarkMode') ?? false;
    notifyListeners();
  }
}