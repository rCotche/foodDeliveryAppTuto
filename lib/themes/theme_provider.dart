import 'package:flutter/material.dart';
import 'package:food_delivery/themes/dark_mode.dart';
import 'package:food_delivery/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  //je recucpere la valeur _themeData
  //la fontcion c'est get themeData qui renvoie un ThemeData
  // equivalent de : function getThemeData(){return _themeData}
  ThemeData get themeData => _themeData;

  // L'expression => est une façon concise de définir un getter en Dart.
  //Elle est suivie d'une expression qui calcule
  //et retourne la valeur du getter.
  //Dans cet exemple, une expression ternaire est utilisée
  //pour déterminer la valeur du booléen isDarkMode.

  // ce getter isDarkMode retourne true si le thème actuel
  //correspond au mode sombre, et false sinon.
  bool get isDarkMode => _themeData == darkMode;

  //modifie la valeur de _themeData
  //equivalent de : function setThemeData(ThemeData themeData){
  // _themeData = themeData;
  //}
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
