import 'package:flutter/material.dart';

import 'package:dev_flutter/theme/colors.dart';

class CustomTheme {
  static ThemeData get theme {
    return ThemeData(
      fontFamily: 'Roboto',
      scaffoldBackgroundColor: CustomColors.mainBackground,
      primaryColor: Colors.white,
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: CustomColors.primaryText,
        ),
        headline2: const TextStyle(
          fontSize: 22,
          height: 1.3,
          fontWeight: FontWeight.w700,
        ),
        headline3: TextStyle(
          fontSize: 20,
          height: 1.25,
          fontWeight: FontWeight.w700,
          color: CustomColors.primaryText,
        ),
        headline4: TextStyle(
          height: 1.5,
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: CustomColors.primaryText,
        ),
        bodyText1: TextStyle(
          fontSize: 16,
          height: 1.5,
          color: CustomColors.secondaryText,
        ),
        bodyText2: TextStyle(
          fontSize: 14,
          height: 1.3,
          fontWeight: FontWeight.w500,
          color: CustomColors.secondaryText,
        ),
        overline: TextStyle(
          fontSize: 12,
          height: 1.25,
          color: CustomColors.secondaryText,
          letterSpacing: 0,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: CustomColors.buttonBackground,
          onPrimary: CustomColors.primaryText,
          padding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 12,
          ),
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
