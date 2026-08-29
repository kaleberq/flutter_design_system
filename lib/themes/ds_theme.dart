import 'package:flutter/material.dart';
import 'package:flutter_design_system/tokens/ds_colors.dart';
import 'package:flutter_design_system/tokens/ds_typography.dart';
import 'package:flutter_design_system/tokens/ds_spacing.dart';

/// Theme do design system
class DSTheme {
  DSTheme._(this._context);

  final BuildContext _context;

  static const CardThemeData cardTheme = CardThemeData(elevation: 4);

  /// Leitura theme-aware no build.
  static DSTheme of(BuildContext context) => DSTheme._(context);

  ThemeData get theme => Theme.of(_context);

  ColorScheme get scheme => theme.colorScheme;

  Brightness get brightness => theme.brightness;

  bool get isDark => brightness == Brightness.dark;

  Color get primary => scheme.primary;

  Color get onPrimary => scheme.onPrimary;

  Color get secondary => scheme.secondary;

  Color get onSecondary => scheme.onSecondary;

  Color get error => scheme.error;

  Color get onError => scheme.onError;

  Color get surface => scheme.surface;

  Color get onSurface => scheme.onSurface;

  Color get outline => scheme.outline;

  Color get errorContainer => scheme.errorContainer;

  Color get onErrorContainer => scheme.onErrorContainer;

  Color get scaffoldBackground => theme.scaffoldBackgroundColor;

  Color disabledPrimary([double alpha = 0.4]) =>
      primary.withValues(alpha: alpha);

  Color get grey => DSColors.resolveGreyColor(_context);

  Color get warning => DSColors.resolveWarningColor(_context);

  /// Theme claro
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: DSColors.primaryLight,
        onPrimary: DSColors.onPrimary,
        secondary: DSColors.secondaryLight,
        onSecondary: DSColors.onSecondary,
        error: DSColors.errorLight,
        onError: DSColors.onError,
        surface: DSColors.surfaceLight,
        onSurface: DSColors.onSurfaceLight,
        outline: DSColors.outlineLight,
        errorContainer: DSColors.errorContainerLight,
        onErrorContainer: DSColors.onErrorContainerLight,
      ),
      cardTheme: cardTheme,
      scaffoldBackgroundColor: DSColors.backgroundLight,
      useMaterial3: true,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: DSColors.primaryLight,
          foregroundColor: DSColors.onPrimary,
          padding: EdgeInsets.symmetric(
            horizontal: DSSpacing.md,
            vertical: DSSpacing.sm,
          ),
          elevation: 2,
          textStyle: DSTypographyMedium.labelMedium,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: DSColors.primaryLight,
          padding: EdgeInsets.symmetric(
            horizontal: DSSpacing.md,
            vertical: DSSpacing.sm,
          ),
          textStyle: DSTypographyMedium.labelMedium,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: DSColors.primaryLight,
          side: BorderSide(color: DSColors.primaryLight),
          padding: EdgeInsets.symmetric(
            horizontal: DSSpacing.md,
            vertical: DSSpacing.sm,
          ),
          textStyle: DSTypographyMedium.labelMedium,
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: DSColors.surfaceLight,
        modalBackgroundColor: DSColors.surfaceLight,
      ),
    );
  }

  /// Theme escuro
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: DSColors.primaryDark,
        onPrimary: DSColors.onPrimary,
        secondary: DSColors.secondaryDark,
        onSecondary: DSColors.onSecondary,
        error: DSColors.errorDark,
        onError: DSColors.onError,
        surface: DSColors.surfaceDark,
        onSurface: DSColors.onSurfaceDark,
        outline: DSColors.outlineDark,
        errorContainer: DSColors.errorContainerDark,
        onErrorContainer: DSColors.onErrorContainerDark,
      ),
      cardTheme: cardTheme,
      scaffoldBackgroundColor: DSColors.backgroundDark,
      useMaterial3: true,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: DSColors.primaryDark,
          foregroundColor: DSColors.onPrimary,
          padding: EdgeInsets.symmetric(
            horizontal: DSSpacing.md,
            vertical: DSSpacing.sm,
          ),
          elevation: 2,
          textStyle: DSTypographyMedium.labelMedium,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: DSColors.primaryDark,
          padding: EdgeInsets.symmetric(
            horizontal: DSSpacing.md,
            vertical: DSSpacing.sm,
          ),
          textStyle: DSTypographyMedium.labelMedium,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: DSColors.primaryDark,
          side: BorderSide(color: DSColors.primaryDark),
          padding: EdgeInsets.symmetric(
            horizontal: DSSpacing.md,
            vertical: DSSpacing.sm,
          ),
          textStyle: DSTypographyMedium.labelMedium,
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: DSColors.surfaceDark,
        modalBackgroundColor: DSColors.surfaceDark,
      ),
    );
  }
}
