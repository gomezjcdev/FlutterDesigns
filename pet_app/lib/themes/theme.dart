import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color _iconColor = Colors.red;
  static const Color _primaryColor = Color(0xFFCD8B32);
  static const Color _primaryVariantColor = Color(0xFFF8F8F8);
  static const Color _secondaryColor = Colors.green;
  static const Color _onPrimaryColor = Colors.black;

  static final ThemeData customTheme = ThemeData(
    scaffoldBackgroundColor: _primaryVariantColor,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontFamily: "Roboto",
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      color: _primaryVariantColor,
      iconTheme: IconThemeData(color: _onPrimaryColor),
    ),
    colorScheme: const ColorScheme.light(
      primary: _primaryColor,
      primaryContainer: _primaryVariantColor,
      secondary: _secondaryColor,
      onPrimary: _onPrimaryColor,
    ),
    iconTheme: const IconThemeData(
      color: _iconColor,
    ),
    textTheme: _lightTextTheme,
    dividerTheme: const DividerThemeData(color: Colors.black12),
  );

  static const TextTheme _lightTextTheme = TextTheme(
    headline1: _lightScreenHeading1TextStyle,
  );

  static const TextStyle _lightScreenHeading1TextStyle = TextStyle(
    fontSize: 26.0,
    fontWeight: FontWeight.bold,
    color: _onPrimaryColor,
    fontFamily: "Roboto",
  );
}
