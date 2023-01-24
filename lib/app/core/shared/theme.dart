import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

const brightness = Brightness.dark;

TextStyle appBarTextStyle = GoogleFonts.roboto(
  color: AppColors.lightColor,
  fontSize: 20.0,
  fontWeight: FontWeight.w500,
);

TextStyle defaultText = GoogleFonts.roboto(
  color: AppColors.lightColor,
);

abstract class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: brightness,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.darkColor,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    textTheme: TextTheme(
      headline1: appBarTextStyle,
      headline6: defaultText,
      bodyText2: defaultText,
    ),
    colorScheme: const ColorScheme(
      brightness: brightness,
      background: AppColors.lightColor,
      onBackground: AppColors.lightColor,
      error: AppColors.primaryColor,
      onError: AppColors.primaryColor,
      onPrimary: AppColors.lightColor,
      onSecondary: AppColors.primaryColor,
      onSurface: AppColors.primaryColor,
      primary: AppColors.primaryColor,
      secondary: AppColors.primaryColor,
      surface: AppColors.lightColor,
    ).copyWith(secondary: AppColors.primaryColor),
  );
}
