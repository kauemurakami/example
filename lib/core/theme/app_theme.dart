import 'package:dev/core/values/colors.dart';
import 'package:flutter/material.dart';

class GlobalTheme {
  static final globalTheme = ThemeData(
    colorScheme: _customColorScheme,
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontSize: 22,
      ),
      bodyText2: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        backgroundColor: customBackgroundWhite,
      ),
      caption: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
      headline1: TextStyle(
        fontSize: 60,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    appBarTheme: const AppBarTheme(
      // This will control the "back" icon
      iconTheme: IconThemeData(),
      // This will control action icon buttons that locates on the right
      actionsIconTheme: IconThemeData(),
      centerTitle: false,
      elevation: 15,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboto',
        fontSize: 40,
      ),
    ),
  );

  static final globalDarkTheme = ThemeData(
    colorScheme: _customColorScheme,
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontSize: 22,
      ),
      bodyText2: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      caption: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: customMagenta900,
      ),
      headline1: TextStyle(
        fontSize: 60,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    appBarTheme: const AppBarTheme(
      // This will control the "back" icon
      // This will control action icon buttons that locates on the right
      centerTitle: false,
      elevation: 15,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboto',
        fontSize: 40,
      ),
    ),
  );
}

const ColorScheme _customColorScheme = ColorScheme(
  primary: customMagenta50,
  primaryVariant: customMagenta600,
  secondary: Colors.amber,
  secondaryVariant: customMagenta400,
  surface: Colors.purpleAccent,
  background: customSurfaceWhite,
  error: customMagenta900,
  onPrimary: Colors.red,
  onSecondary: Colors.deepOrange,
  onSurface: customMagenta300,
  onBackground: customMagenta100,
  onError: Colors.redAccent,
  brightness: Brightness.light,
);
