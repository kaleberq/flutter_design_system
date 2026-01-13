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
TextStyle _createTextStyle({required double fontSize, FontWeight? fontWeight}) {
  return GoogleFonts.montserrat(fontSize: fontSize, fontWeight: fontWeight);
}

/// Tipografia Regular
class DSTypographyRegular {
  DSTypographyRegular._();

  static TextStyle get labelXLarge => _createTextStyle(
    fontSize: _TypographySizes.labelXLarge,
    fontWeight: FontWeight.w500,
  );
  static TextStyle get labelLarge => _createTextStyle(
    fontSize: _TypographySizes.labelLarge,
    fontWeight: FontWeight.w500,
  );
  static TextStyle get labelMedium => _createTextStyle(
    fontSize: _TypographySizes.labelMedium,
    fontWeight: FontWeight.w500,
  );
  static TextStyle get labelSmall => _createTextStyle(
    fontSize: _TypographySizes.labelSmall,
    fontWeight: FontWeight.w500,
  );
  static TextStyle get labelXSmall => _createTextStyle(
    fontSize: _TypographySizes.labelXSmall,
    fontWeight: FontWeight.w500,
  );
}

/// Tipografia Medium
class DSTypographyMedium {
  DSTypographyMedium._();

  static TextStyle get labelXLarge => _createTextStyle(
    fontSize: _TypographySizes.labelXLarge,
    fontWeight: FontWeight.w600,
  );
  static TextStyle get labelLarge => _createTextStyle(
    fontSize: _TypographySizes.labelLarge,
    fontWeight: FontWeight.w600,
  );
  static TextStyle get labelMedium => _createTextStyle(
    fontSize: _TypographySizes.labelMedium,
    fontWeight: FontWeight.w600,
  );
  static TextStyle get labelSmall => _createTextStyle(
    fontSize: _TypographySizes.labelSmall,
    fontWeight: FontWeight.w600,
  );
  static TextStyle get labelXSmall => _createTextStyle(
    fontSize: _TypographySizes.labelXSmall,
    fontWeight: FontWeight.w600,
  );
}

/// Tipografia SemiBold
class DSTypographySemiBold {
  DSTypographySemiBold._();

  static TextStyle get labelXLarge => _createTextStyle(
    fontSize: _TypographySizes.labelXLarge,
    fontWeight: FontWeight.w700,
  );
  static TextStyle get labelLarge => _createTextStyle(
    fontSize: _TypographySizes.labelLarge,
    fontWeight: FontWeight.w700,
  );
  static TextStyle get labelMedium => _createTextStyle(
    fontSize: _TypographySizes.labelMedium,
    fontWeight: FontWeight.w700,
  );
  static TextStyle get labelSmall => _createTextStyle(
    fontSize: _TypographySizes.labelSmall,
    fontWeight: FontWeight.w700,
  );
  static TextStyle get labelXSmall => _createTextStyle(
    fontSize: _TypographySizes.labelXSmall,
    fontWeight: FontWeight.w700,
  );
}
