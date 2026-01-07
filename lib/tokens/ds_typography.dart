import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Tamanhos de fonte do design system
class _TypographySizes {
  _TypographySizes._();

  // Tamanhos únicos

  static const double labelXLarge = 32;
  static const double labelLarge = 22;
  static const double labelMedium = 16;
  static const double labelSmall = 14;
  static const double labelXSmall = 12;
}

/// Helper privado para criar TextStyles
TextStyle _createTextStyle(double fontSize, FontWeight fontWeight) {
  return GoogleFonts.montserrat(fontSize: fontSize, fontWeight: fontWeight);
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
