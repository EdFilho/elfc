import 'package:elfc/app/core/shared/color_schemes.dart';
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
    primaryColor: AppColors.whiteColor,
    scaffoldBackgroundColor: AppColors.backgroundDarkColor,
    splashColor: Colors.grey[600],
    highlightColor: Colors.grey[600],
    cardColor: AppColors.allDarkColor,
    dialogBackgroundColor: AppColors.softDarkColor,
    backgroundColor: AppColors.softDarkColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.softDarkColor,
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
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          width: 0.5,
        ),
      ),
    ),
    colorScheme: darkColorScheme,
  );

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.allDarkColor,
    scaffoldBackgroundColor: AppColors.whiteColor,
    cardColor: AppColors.softWhite,
    dialogBackgroundColor: AppColors.softWhite,
    splashColor: Colors.grey[300],
    highlightColor: Colors.grey[300],
    backgroundColor: AppColors.whiteColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.whiteColor,
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
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          width: 0.5,
        ),
      ),
    ),
    colorScheme: lightColorScheme,
  );
}
