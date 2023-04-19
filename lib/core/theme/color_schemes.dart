import 'package:flutter/material.dart';

import 'colors.dart';

ColorScheme lightColorScheme = const ColorScheme(
  brightness: Brightness.light,
  primary: AppColors.allDarkColor,
  onPrimary: AppColors.whiteColor,
  primaryContainer: AppColors.allDarkColor,
  onPrimaryContainer: AppColors.allDarkColor,
  secondary: AppColors.allDarkColor,
  onSecondary: AppColors.whiteColor,
  secondaryContainer: AppColors.allDarkColor,
  onSecondaryContainer: AppColors.allDarkColor,
  tertiary: AppColors.allDarkColor,
  onTertiary: AppColors.allDarkColor,
  tertiaryContainer: AppColors.allDarkColor,
  onTertiaryContainer: AppColors.allDarkColor,
  error: AppColors.errorColor,
  errorContainer: AppColors.errorColor,
  onError: AppColors.errorColor,
  onErrorContainer: AppColors.errorColor,
  background: AppColors.softWhite,
  onBackground: AppColors.allDarkColor,
  surface: AppColors.success,
  onSurface: AppColors.allDarkColor,
  surfaceVariant: AppColors.softWhite,
  onSurfaceVariant: AppColors.whiteColor,
  outline: AppColors.softWhite,
  onInverseSurface: AppColors.whiteColor,
  inverseSurface: AppColors.allDarkColor,
  inversePrimary: AppColors.allDarkColor,
  shadow: AppColors.maskWhite,
  surfaceTint: AppColors.allDarkColor,
).copyWith(secondary: AppColors.allDarkColor);

ColorScheme darkColorScheme = const ColorScheme(
  brightness: Brightness.dark,
  primary: AppColors.whiteColor,
  onPrimary: AppColors.allDarkColor,
  primaryContainer: AppColors.softWhite,
  onPrimaryContainer: AppColors.whiteColor,
  secondary: AppColors.whiteColor,
  onSecondary: AppColors.allDarkColor,
  secondaryContainer: AppColors.whiteColor,
  onSecondaryContainer: AppColors.whiteColor,
  tertiary: AppColors.whiteColor,
  onTertiary: AppColors.whiteColor,
  tertiaryContainer: AppColors.whiteColor,
  onTertiaryContainer: AppColors.whiteColor,
  error: AppColors.errorColor,
  errorContainer: AppColors.errorColor,
  onError: AppColors.errorColor,
  onErrorContainer: AppColors.errorColor,
  background: AppColors.softDarkColor,
  onBackground: AppColors.whiteColor,
  surface: AppColors.successDark,
  onSurface: AppColors.whiteColor,
  surfaceVariant: AppColors.softDarkColor,
  onSurfaceVariant: AppColors.allDarkColor,
  outline: AppColors.softDarkColor,
  onInverseSurface: AppColors.allDarkColor,
  inverseSurface: AppColors.whiteColor,
  inversePrimary: AppColors.whiteColor,
  shadow: AppColors.softDarkColor,
  surfaceTint: AppColors.whiteColor,
).copyWith(secondary: AppColors.whiteColor);