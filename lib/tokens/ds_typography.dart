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
  static const double _size32 = 32;
  static const double _size22 = 22;
  static const double _size16 = 16;
  static const double _size14 = 14;
  static const double _size12 = 12;

  // Title
  static const double labelXLarge = _size32;
  static const double labelLarge = _size22;
  static const double labelMedium = _size16;
  static const double labelSmall = _size14;
  static const double labelXSmall = _size12;
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
  static TextStyle get labelXLarge =>
      _createTextStyle(_TypographySizes.labelXLarge, FontWeight.w400);
  static TextStyle get labelLarge =>
      _createTextStyle(_TypographySizes.labelLarge, FontWeight.w400);
  static TextStyle get labelMedium =>
      _createTextStyle(_TypographySizes.labelMedium, FontWeight.w400);
  static TextStyle get labelSmall =>
      _createTextStyle(_TypographySizes.labelSmall, FontWeight.w400);
  static TextStyle get labelXSmall =>
      _createTextStyle(_TypographySizes.labelXSmall, FontWeight.w400);
}

/// Tipografia Medium
class DSTypographyMedium {
  DSTypographyMedium._();

  static TextStyle get labelXLarge =>
      _createTextStyle(_TypographySizes.labelXLarge, FontWeight.w500);
  static TextStyle get labelLarge =>
      _createTextStyle(_TypographySizes.labelLarge, FontWeight.w500);
  static TextStyle get labelMedium =>
      _createTextStyle(_TypographySizes.labelMedium, FontWeight.w500);
  static TextStyle get labelSmall =>
      _createTextStyle(_TypographySizes.labelSmall, FontWeight.w500);
  static TextStyle get labelXSmall =>
      _createTextStyle(_TypographySizes.labelXSmall, FontWeight.w500);
}

/// Tipografia SemiBold
class DSTypographySemiBold {
  DSTypographySemiBold._();

  static TextStyle get labelXLarge =>
      _createTextStyle(_TypographySizes.labelXLarge, FontWeight.w600);
  static TextStyle get labelLarge =>
      _createTextStyle(_TypographySizes.labelLarge, FontWeight.w600);
  static TextStyle get labelMedium =>
      _createTextStyle(_TypographySizes.labelMedium, FontWeight.w600);
  static TextStyle get labelSmall =>
      _createTextStyle(_TypographySizes.labelSmall, FontWeight.w600);
  static TextStyle get labelXSmall =>
      _createTextStyle(_TypographySizes.labelXSmall, FontWeight.w600);
}
