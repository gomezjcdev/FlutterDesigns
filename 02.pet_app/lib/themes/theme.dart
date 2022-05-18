import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color _iconColor = Color(0xFFC4C4C4);
  static const Color _primaryColor = Color(0xFFCD8B32);
  static const Color _primaryVariantColor = Color(0xFFFFFFFF);
  static const Color _secondaryColor = Colors.green;
  static const Color _onPrimaryColor = Colors.black;
  static const Color _tabColor = Color(0xFFEDBF58);
  static const Color _greenTitle = Color(0xFF5CB287);
  static const Color _grayTitle = Color(0xFF9D9D9D);
  static const Color _profileBackground = Color(0xFFD5EBE1);
  static const Color _grayBackground = Color(0xFFF6F6F6);
  static const Color _hintText = Color(0xFFA7A7A7);
  static const Color _colorBlack = Color(0xFF1B1B1B);
  static const Color _imageBackground1 = Color(0xFFC5CFD3);
  static const Color _imageBackground2 = Color(0xFFEBD3AD);
  static const Color _yellowTitle = Color(0xFFECC05B);

  static Color get tabColor => _tabColor;
  static Color get greenTitle => _greenTitle;
  static Color get grayTitle => _grayTitle;
  static Color get profileBackground => _profileBackground;
  static Color get grayBackground => _grayBackground;
  static Color get hintText => _hintText;
  static Color get colorBlack => _colorBlack;
  static Color get imageBackground1 => _imageBackground1;
  static Color get imageBackground2 => _imageBackground2;
  static Color get yellowTitle => _yellowTitle;

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
    headline2: _lightScreenHeading2TextStyle,
    headline3: _lightScreenHeading3TextStyle,
    headline4: _lightScreenHeading4TextStyle
  );

  static const TextStyle _lightScreenHeading1TextStyle = TextStyle(
    fontSize: 26.0,
    fontWeight: FontWeight.bold,
    color: _onPrimaryColor,
    fontFamily: "Roboto",
  );

  static const TextStyle _lightScreenHeading2TextStyle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
    color: _onPrimaryColor,
    fontFamily: "Roboto",
  );

  static const TextStyle _lightScreenHeading3TextStyle = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    color: _onPrimaryColor,
    fontFamily: "Roboto",
  );

  static const TextStyle _lightScreenHeading4TextStyle = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
    color: _onPrimaryColor,
    fontFamily: "Roboto",
  );
}
