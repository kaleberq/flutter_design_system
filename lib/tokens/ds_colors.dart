import 'package:flutter/material.dart';

/// Cores do design system
class DSColors {
  DSColors._();

  // ============================================
  // Primary Colors
  // ============================================
  /// Cor primária principal
  static const Color primary = Color(0xFF6200EE);

  /// Cor primária clara (para tema light)
  static const Color primaryLight = Color(0xFF9D46FF);

  /// Cor primária escura (para tema dark)
  static const Color primaryDark = Color(0xFF3700B3);

  /// Texto sobre cor primária (branco para contraste)
  static const Color onPrimary = Color(0xFFFFFFFF);

  // ============================================
  // Secondary Colors
  // ============================================
  /// Cor secundária principal
  static const Color secondary = Color(0xFF03DAC6);

  /// Cor secundária clara (para tema light)
  static const Color secondaryLight = Color(0xFF66FFF9);

  /// Cor secundária escura (para tema dark)
  static const Color secondaryDark = Color(0xFF00A896);

  /// Texto sobre cor secundária (preto para contraste com ciano claro)
  static const Color onSecondary = Color(0xFF000000);

  // ============================================
  // Error Colors
  // ============================================
  /// Cor de erro clara (para tema light)
  static const Color errorLight = Color(0xFFEF5350);

  /// Cor de erro escura (para tema dark)
  static const Color errorDark = Color(0xFF8E0000);

  /// Texto sobre cor de erro (branco para contraste)
  static const Color onError = Color(0xFFFFFFFF);

  /// Container de erro no tema claro
  static const Color errorContainerLight = Color(0xFFFFDAD6);

  /// Texto sobre container de erro no tema claro
  static const Color onErrorContainerLight = Color(0xFF410002);

  /// Container de erro no tema escuro
  static const Color errorContainerDark = Color(0xFF93000A);

  /// Texto sobre container de erro no tema escuro
  static const Color onErrorContainerDark = Color(0xFFFFDAD6);

  /// Borda/outline no tema claro (inputs)
  static const Color outlineLight = Color(0xFFD1D5DB);

  /// Borda/outline no tema escuro
  static const Color outlineDark = Color(0xFF757575);

  /// Borda secundária no tema claro (cards)
  static const Color outlineVariantLight = Color(0xFFE5E7EB);

  /// Borda secundária no tema escuro
  static const Color outlineVariantDark = Color(0xFF424242);

  // ============================================
  // Warning Colors
  // ============================================
  /// Cor de aviso clara (para tema light)
  static const Color _warningLight = Color(0xFFFF9800);

  /// Cor de aviso escura (para tema dark)
  static const Color _warningDark = Color(0xFFF57C00);

  /// Texto sobre cor de aviso (branco para contraste)
  static const Color onWarning = Color(0xFFFFFFFF);

  // ============================================
  // Surface Colors
  // ============================================
  /// Superfície no tema claro (branco para cards e inputs)
  static const Color surfaceLight = Color(0xFFFFFFFF);

  /// Superfície no tema escuro (cinza escuro para cards)
  static const Color surfaceDark = Color(0xFF1E1E1E);

  /// Texto sobre superfície no tema claro (preto)
  static const Color onSurfaceLight = Color(0xFF000000);

  /// Texto sobre superfície no tema escuro (branco)
  static const Color onSurfaceDark = Color(0xFFFFFFFF);

  /// Rótulos e texto secundário no tema claro
  static const Color onSurfaceVariantLight = Color(0xFF4B5563);

  /// Rótulos e texto secundário no tema escuro
  static const Color onSurfaceVariantDark = lightGrey;

  /// Base do shimmer no tema claro (independente da surface branca)
  static const Color shimmerBaseLight = outlineVariantLight;

  // ============================================
  // Background Colors
  // ============================================
  /// Fundo no tema claro (cinza neutro suave)
  static const Color backgroundLight = Color(0xFFF8F9FA);

  /// Fundo no tema escuro (preto)
  static const Color backgroundDark = Color(0xFF121212);

  /// Cor preta
  static const Color black = Color(0xFF000000);

  /// Cor branca
  static const Color white = Color(0xFFFFFFFF);

  /// Cor cinza escuro
  static const Color darkGrey = Color(0xFF424242);

  /// Cor cinza claro
  static const Color lightGrey = Color(0xFFBDBDBD);

  /// Resolve a cor de erro de acordo com o tema atual
  static Color resolveErrorColor(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.light ? errorLight : errorDark;
  }

  /// Resolve a cor de aviso de acordo com o tema atual
  static Color resolveWarningColor(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.light ? _warningLight : _warningDark;
  }

  /// Resolve a cor de conteúdo sobre o background
  static Color resolveBackgroundColor(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.light ? black : white;
  }

  /// Resolve a cor de conteúdo sobre o background inverso
  static Color resolveBackgroundInverseColor(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.light ? white : black;
  }

  /// Resolve a cor cinza de superfície conforme o tema atual
  static Color resolveGreyColor(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.light ? darkGrey : lightGrey;
  }
}
