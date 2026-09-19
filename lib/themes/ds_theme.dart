import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_design_system/tokens/ds_colors.dart';
import 'package:flutter_design_system/tokens/ds_radius.dart';
import 'package:flutter_design_system/tokens/ds_spacing.dart';
import 'package:flutter_design_system/tokens/ds_typography.dart';

/// Theme do design system
class DSTheme {
  DSTheme._(this._context);

  final BuildContext _context;

  static const CardThemeData cardTheme = CardThemeData(elevation: 4);

  static final SystemUiOverlayStyle lightSystemOverlayStyle =
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent);

  static final SystemUiOverlayStyle darkSystemOverlayStyle =
      SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent);

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

  Color get onSurfaceVariant => scheme.onSurfaceVariant;

  Color get outline => scheme.outline;

  Color get outlineVariant => scheme.outlineVariant;

  Color get errorContainer => scheme.errorContainer;

  Color get onErrorContainer => scheme.onErrorContainer;

  Color get scaffoldBackground => theme.scaffoldBackgroundColor;

  Color disabledPrimary([double alpha = 0.4]) =>
      primary.withValues(alpha: alpha);

  Color get grey => DSColors.resolveGreyColor(_context);

  Color get warning => DSColors.resolveWarningColor(_context);

  SystemUiOverlayStyle get systemOverlayStyle =>
      theme.appBarTheme.systemOverlayStyle ??
      (isDark ? darkSystemOverlayStyle : lightSystemOverlayStyle);

  Color get cardColor => isDark ? surface.withValues(alpha: 0.55) : surface;

  ShapeBorder get cardShape => RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(DSRadius.md),
    side: isDark ? BorderSide.none : BorderSide(color: outlineVariant),
  );

  /// Theme claro
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: DSColors.primaryLight,
        onPrimary: DSColors.onPrimary,
        secondary: DSColors.secondaryLight,
        onSecondary: DSColors.onSecondary,
        error: DSColors.errorLight,
        onError: DSColors.onError,
        surface: DSColors.surfaceLight,
        onSurface: DSColors.onSurfaceLight,
        onSurfaceVariant: DSColors.onSurfaceVariantLight,
        outline: DSColors.outlineLight,
        outlineVariant: DSColors.outlineVariantLight,
        errorContainer: DSColors.errorContainerLight,
        onErrorContainer: DSColors.onErrorContainerLight,
        surfaceTint: Colors.transparent,
      ),
      cardTheme: cardTheme,
      scaffoldBackgroundColor: DSColors.backgroundLight,
      useMaterial3: true,
      appBarTheme: AppBarTheme(systemOverlayStyle: lightSystemOverlayStyle),
      inputDecorationTheme: _inputDecorationTheme(
        fillColor: DSColors.surfaceLight,
        outlineColor: DSColors.outlineLight,
        labelColor: DSColors.onSurfaceVariantLight,
        focusedOutlineColor: DSColors.primaryLight,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        elevation: 2,
        highlightElevation: 4,
        backgroundColor: DSColors.primaryLight,
        foregroundColor: DSColors.onPrimary,
      ),
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
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: DSColors.surfaceLight,
        modalBackgroundColor: DSColors.surfaceLight,
      ),
    );
  }

  /// Theme escuro
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: DSColors.primaryDark,
        onPrimary: DSColors.onPrimary,
        secondary: DSColors.secondaryDark,
        onSecondary: DSColors.onSecondary,
        error: DSColors.errorDark,
        onError: DSColors.onError,
        surface: DSColors.surfaceDark,
        onSurface: DSColors.onSurfaceDark,
        onSurfaceVariant: DSColors.onSurfaceVariantDark,
        outline: DSColors.outlineDark,
        outlineVariant: DSColors.outlineVariantDark,
        errorContainer: DSColors.errorContainerDark,
        onErrorContainer: DSColors.onErrorContainerDark,
        surfaceTint: Colors.transparent,
      ),
      cardTheme: cardTheme,
      scaffoldBackgroundColor: DSColors.backgroundDark,
      useMaterial3: true,
      appBarTheme: AppBarTheme(systemOverlayStyle: darkSystemOverlayStyle),
      inputDecorationTheme: _inputDecorationTheme(
        fillColor: DSColors.surfaceDark,
        outlineColor: DSColors.outlineDark,
        labelColor: DSColors.onSurfaceVariantDark,
        focusedOutlineColor: DSColors.primaryDark,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        elevation: 6,
        highlightElevation: 8,
        backgroundColor: DSColors.primaryDark,
        foregroundColor: DSColors.onPrimary,
      ),
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
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: DSColors.surfaceDark,
        modalBackgroundColor: DSColors.surfaceDark,
      ),
    );
  }

  static InputDecorationTheme _inputDecorationTheme({
    required Color fillColor,
    required Color outlineColor,
    required Color labelColor,
    required Color focusedOutlineColor,
  }) {
    OutlineInputBorder outline(Color color) {
      return OutlineInputBorder(
        borderRadius: BorderRadius.circular(DSRadius.md),
        borderSide: BorderSide(color: color),
      );
    }

    return InputDecorationTheme(
      filled: true,
      fillColor: fillColor,
      labelStyle: TextStyle(color: labelColor),
      hintStyle: TextStyle(color: labelColor),
      floatingLabelStyle: TextStyle(color: labelColor),
      border: outline(outlineColor),
      enabledBorder: outline(outlineColor),
      focusedBorder: outline(focusedOutlineColor),
    );
  }
}
