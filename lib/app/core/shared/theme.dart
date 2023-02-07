import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

TextStyle appBarTextStyle = GoogleFonts.roboto(
  color: AppColors.lightColor,
  fontSize: 20.0,
  fontWeight: FontWeight.w500,
);

TextStyle defaultText = GoogleFonts.roboto();

TextStyle headerText = GoogleFonts.roboto(
  fontSize: 24.0,
);

TextStyle headline4 = GoogleFonts.roboto(
  fontSize: 24.0,
  color: AppColors.lightColor,
);

TextStyle headline2 = GoogleFonts.roboto(
  fontSize: 20.0,
);

TextStyle buttonText = GoogleFonts.roboto(fontSize: 22.0);

abstract class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    splashColor: AppColors.primaryColor,
    highlightColor: AppColors.primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkColor,
    ),
    textTheme: TextTheme(
      headline1: appBarTextStyle,
      headline2: headline2,
      headline6: defaultText,
      headline4: headline4,
      headline5: headline4,
      bodyText2: defaultText,
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          width: 0.5,
          color: AppColors.lightColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          width: 0.5,
          color: AppColors.lightColor,
        ),
      ),
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      background: AppColors.darkColor,
      onBackground: AppColors.darkColor,
      error: AppColors.errorColor,
      onError: AppColors.errorColor,
      onPrimary: AppColors.darkColor,
      onSecondary: AppColors.primaryColor,
      onSurface: AppColors.primaryColor,
      outline: AppColors.primaryColor,
      primary: AppColors.primaryColor,
      secondary: AppColors.primaryColor,
      surface: AppColors.lightColor,
    ).copyWith(secondary: AppColors.primaryColor),
  );

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.darkColor,
    scaffoldBackgroundColor: AppColors.lightColor,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    backgroundColor: AppColors.lightColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightColor,
    ),
    textTheme: TextTheme(
      headline1: appBarTextStyle,
      headline6: defaultText,
      bodyText2: defaultText,
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          width: 0.5,
          color: AppColors.darkColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          width: 0.5,
          color: AppColors.darkColor,
        ),
      ),
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      background: AppColors.darkColor,
      onBackground: AppColors.darkColor,
      error: AppColors.errorColor,
      onError: AppColors.errorColor,
      onPrimary: AppColors.lightColor,
      onSecondary: AppColors.darkColor,
      onSurface: AppColors.darkColor,
      primary: AppColors.darkColor,
      secondary: AppColors.darkColor,
      surface: AppColors.lightColor,
    ).copyWith(secondary: AppColors.darkColor),
  );
}
