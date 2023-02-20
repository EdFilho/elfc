import 'package:elfc/app/core/shared/theme/color_schemes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors/colors.dart';

TextStyle appBarTextStyle = GoogleFonts.roboto(
  fontSize: 20.0,
  fontWeight: FontWeight.w500,
);

TextStyle defaultText = GoogleFonts.roboto();

TextStyle headerText = GoogleFonts.roboto(
  fontSize: 24.0,
);

TextStyle headline4 = GoogleFonts.roboto(
  fontSize: 24.0,
);

TextStyle headline2 = GoogleFonts.roboto(
  fontSize: 20.0,
);

TextStyle headline3 = GoogleFonts.roboto(
  fontSize: 16.0,
);

TextStyle buttonText = GoogleFonts.roboto(fontSize: 22.0);

abstract class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.whiteColor,
    scaffoldBackgroundColor: AppColors.backgroundDarkColor,
    cardColor: AppColors.allDarkColor,
    dialogBackgroundColor: AppColors.softDarkColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.softDarkColor,
    ),
    textTheme: TextTheme(
      displayLarge: appBarTextStyle,
      displayMedium: headline2,
      titleLarge: defaultText,
      headlineMedium: headline4,
      headlineSmall: headline4,
      bodyMedium: defaultText,
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          width: 0.5,
          color: AppColors.softWhite,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          width: 0.5,
          color: AppColors.softWhite,
        ),
      ),
    ),
    colorScheme: darkColorScheme,
  );

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.allDarkColor,
    scaffoldBackgroundColor: AppColors.backgroundWhiteColor,
    cardColor: AppColors.whiteColor,
    dialogBackgroundColor: AppColors.softWhite,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.softWhite,
      toolbarTextStyle: TextStyle(
        color: AppColors.allDarkColor,
      ),
      titleTextStyle: TextStyle(
        color: AppColors.allDarkColor,
      ),
    ),
    textTheme: TextTheme(
      displayLarge: appBarTextStyle,
      displayMedium: headline2,
      titleLarge: defaultText,
      headlineMedium: headline4,
      headlineSmall: headline4,
      bodyMedium: defaultText,
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          width: 0.5,
          color: AppColors.softDarkColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          width: 0.5,
          color: AppColors.softDarkColor,
        ),
      ),
    ),
    colorScheme: lightColorScheme,
  );
}
