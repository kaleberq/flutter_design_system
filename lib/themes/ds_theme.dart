import 'package:flutter/material.dart';
import 'package:flutter_design_system/tokens/ds_colors.dart';

class DSTheme {
  DSTheme._();

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: DSColors.primary,
        onPrimary: DSColors.textOnPrimary,
        secondary: DSColors.secondary,
        onSecondary: DSColors.textOnSecondary,
        error: DSColors.error,
        onError: DSColors.textOnPrimary,
        surface: DSColors.surface,
        onSurface: DSColors.textPrimary,
      ),
      scaffoldBackgroundColor: DSColors.background,
      useMaterial3: true,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: DSColors.primaryLight,
        onPrimary: DSColors.textOnPrimary,
        secondary: DSColors.secondaryLight,
        onSecondary: DSColors.textOnSecondary,
        error: DSColors.errorLight,
        onError: DSColors.textOnPrimary,
        surface: DSColors.neutral800,
        onSurface: DSColors.neutral50,
      ),
      scaffoldBackgroundColor: DSColors.neutral900,
      useMaterial3: true,
    );
  }
}
