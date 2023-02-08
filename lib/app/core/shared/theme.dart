import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

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
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.dark2Color,
    splashColor: Colors.grey[600],
    highlightColor: Colors.grey[600],
    cardColor: AppColors.primaryColor,
    dividerColor: VariableColors().lightShadow.withOpacity(0.22),
    dialogBackgroundColor: AppColors.darkColor,
    backgroundColor: AppColors.darkColor,
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
    cardColor: AppColors.light2Color,
    dialogBackgroundColor: AppColors.light2Color,
    splashColor: Colors.grey[300],
    highlightColor: Colors.grey[300],
    backgroundColor: AppColors.lightColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightColor,
    ),
    textTheme: TextTheme(
      headline1: appBarTextStyle,
      headline2: headline2,
      headline3: headline3,
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
      background: AppColors.primaryColor,
      onBackground: AppColors.primaryColor,
      error: AppColors.errorColor,
      onError: AppColors.errorColor,
      onPrimary: AppColors.darkColor,
      onSecondary: AppColors.darkColor,
      onSurface: AppColors.darkColor,
      primary: AppColors.darkColor,
      secondary: AppColors.darkColor,
      surface: AppColors.darkColor,
    ).copyWith(secondary: AppColors.darkColor),
  );
}
