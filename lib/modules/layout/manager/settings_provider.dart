import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.light;
  bool isLight = true;
  changeTheme(ThemeMode themeMode){
    this.themeMode = themeMode;
    this.isLight = !this.isLight;
    notifyListeners();
  }
}

// كدا عملنا البروفايدر بس عشان الثيم