import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_schemes.dart';
import 'colors.dart';

TextStyle appBarTextStyle = GoogleFonts.roboto(
  fontSize: 20.0,
  fontWeight: FontWeight.w500,
);

TextStyle defaultText = GoogleFonts.roboto();

TextStyle bodySmall = GoogleFonts.roboto(
  fontSize: 10,
);

TextStyle bodyMedium = GoogleFonts.roboto(
  fontSize: 12,
);

TextStyle bodyLarge = GoogleFonts.roboto(
  fontSize: 14,
);

TextStyle title = GoogleFonts.roboto(
  fontSize: 20,
);

TextStyle titleSmall = GoogleFonts.roboto(
  fontSize: 16,
  fontWeight: FontWeight.w800,
);

TextStyle titleLarge = GoogleFonts.roboto(
  fontSize: 24,
  fontWeight: FontWeight.w600,
);

abstract class AppTheme {
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: AppColors.whiteColor,
    scaffoldBackgroundColor: AppColors.backgroundDarkColor,
    cardColor: AppColors.softDarkColor,
    dialogBackgroundColor: AppColors.softDarkColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      shadowColor: Colors.transparent,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.whiteColor,
    ),
    textTheme: TextTheme(
      titleMedium: title,
      titleLarge: titleLarge,
      titleSmall: titleSmall,
      bodySmall: bodySmall,
      bodyMedium: bodyMedium,
      bodyLarge: bodyLarge,
      displayLarge: appBarTextStyle,
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          width: 0.5,
          color: AppColors.softWhite,
        ),
      ),
      labelStyle: const TextStyle(
        color: AppColors.whiteColor,
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
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: AppColors.allDarkColor,
    scaffoldBackgroundColor: AppColors.backgroundWhiteColor,
    cardColor: AppColors.whiteColor,
    dialogBackgroundColor: AppColors.whiteColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      shadowColor: Colors.transparent,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.allDarkColor,
    ),
    textTheme: TextTheme(
      titleMedium: title,
      titleLarge: titleLarge,
      titleSmall: titleSmall,
      bodySmall: bodySmall,
      bodyMedium: bodyMedium,
      bodyLarge: bodyLarge,
      displayLarge: appBarTextStyle,
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          width: 0.5,
          color: AppColors.softDarkColor,
        ),
      ),
      labelStyle: const TextStyle(
        color: AppColors.allDarkColor,
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
