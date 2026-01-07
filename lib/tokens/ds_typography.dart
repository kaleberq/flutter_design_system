import 'package:flutter/material.dart';

/// Fonte primária do design system
class _TypographyFonts {
  _TypographyFonts._();

  /// Fonte primária padrão (pode ser customizada)
  static const String primaryFont = 'Roboto';
}

/// Tamanhos de fonte do design system
class _TypographySizes {
  _TypographySizes._();

  // Tamanhos únicos
  static const double _size22 = 22;
  static const double _size16 = 16;
  static const double _size14 = 14;
  static const double _size12 = 12;

  // Title
  static const double titleLarge = _size22;
  static const double titleMedium = _size16;
  static const double titleSmall = _size14;

  // Body
  static const double bodyLarge = _size16;
  static const double bodyMedium = _size14;
  static const double bodySmall = _size12;
}

/// Helper privado para criar TextStyles
TextStyle _createTextStyle(double fontSize, FontWeight fontWeight) {
  return TextStyle(
    fontFamily: _TypographyFonts.primaryFont,
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}

/// Tipografia Regular
class DSTypographyRegular {
  DSTypographyRegular._();

  // Title
  static TextStyle get titleLarge =>
      _createTextStyle(_TypographySizes.titleLarge, FontWeight.w400);
  static TextStyle get titleMedium =>
      _createTextStyle(_TypographySizes.titleMedium, FontWeight.w400);
  static TextStyle get titleSmall =>
      _createTextStyle(_TypographySizes.titleSmall, FontWeight.w400);

  // Body
  static TextStyle get bodyLarge =>
      _createTextStyle(_TypographySizes.bodyLarge, FontWeight.w400);
  static TextStyle get bodyMedium =>
      _createTextStyle(_TypographySizes.bodyMedium, FontWeight.w400);
  static TextStyle get bodySmall =>
      _createTextStyle(_TypographySizes.bodySmall, FontWeight.w400);
}

/// Tipografia Medium
class DSTypographyMedium {
  DSTypographyMedium._();

  // Title
  static TextStyle get titleLarge =>
      _createTextStyle(_TypographySizes.titleLarge, FontWeight.w500);
  static TextStyle get titleMedium =>
      _createTextStyle(_TypographySizes.titleMedium, FontWeight.w500);
  static TextStyle get titleSmall =>
      _createTextStyle(_TypographySizes.titleSmall, FontWeight.w500);

  // Body
  static TextStyle get bodyLarge =>
      _createTextStyle(_TypographySizes.bodyLarge, FontWeight.w500);
  static TextStyle get bodyMedium =>
      _createTextStyle(_TypographySizes.bodyMedium, FontWeight.w500);
  static TextStyle get bodySmall =>
      _createTextStyle(_TypographySizes.bodySmall, FontWeight.w500);
}

/// Tipografia SemiBold
class DSTypographySemiBold {
  DSTypographySemiBold._();

  // Title
  static TextStyle get titleLarge =>
      _createTextStyle(_TypographySizes.titleLarge, FontWeight.w600);
  static TextStyle get titleMedium =>
      _createTextStyle(_TypographySizes.titleMedium, FontWeight.w600);
  static TextStyle get titleSmall =>
      _createTextStyle(_TypographySizes.titleSmall, FontWeight.w600);

  // Body
  static TextStyle get bodyLarge =>
      _createTextStyle(_TypographySizes.bodyLarge, FontWeight.w600);
  static TextStyle get bodyMedium =>
      _createTextStyle(_TypographySizes.bodyMedium, FontWeight.w600);
  static TextStyle get bodySmall =>
      _createTextStyle(_TypographySizes.bodySmall, FontWeight.w600);
}
