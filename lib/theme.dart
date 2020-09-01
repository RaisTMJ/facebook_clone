import 'package:flutter/material.dart';

enum ThemeKeys { LIGHT, DARK, DARKER }
class Themes {
  static MaterialAccentColor mainColor = Colors.blueAccent;
  static MaterialColor secondaryColor = Colors.grey;
  static Color tertiaryColor = Colors.white;


  static final ThemeData lightTheme = ThemeData(
    primaryColor: mainColor,
    accentColor: mainColor,
    brightness: Brightness.light,
    textTheme: TextTheme(headline6: TextStyle(color: secondaryColor[850]), subtitle1: TextStyle(color: secondaryColor[850])),
    primaryColorLight: secondaryColor[700],
    primaryColorDark: tertiaryColor,
    selectedRowColor: secondaryColor[300],
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: secondaryColor,
    accentColor: mainColor,
    brightness: Brightness.dark,
    textTheme: TextTheme(headline6: TextStyle(color: tertiaryColor), subtitle1: TextStyle(color: tertiaryColor)),
    primaryColorLight: secondaryColor[400],
    primaryColorDark: secondaryColor[850],
    selectedRowColor: secondaryColor[700],
  );

  static final ThemeData darkerTheme = ThemeData(
    primaryColor: Colors.black,
    accentColor: mainColor,
    brightness: Brightness.dark,
    textTheme: TextTheme(headline6: TextStyle(color: tertiaryColor), subtitle1: TextStyle(color: tertiaryColor)),
    primaryColorLight: secondaryColor[400],
    primaryColorDark: Colors.black,
    selectedRowColor: secondaryColor[850],
  );

  static ThemeData getThemeFromKey(ThemeKeys themeKey) {
    print(themeKey);
    switch (themeKey) {
      case ThemeKeys.LIGHT:
        return lightTheme;
      case ThemeKeys.DARK:
        return darkTheme;
      case ThemeKeys.DARKER:
        return darkerTheme;
      default:
        return lightTheme;
    }
  }
}

