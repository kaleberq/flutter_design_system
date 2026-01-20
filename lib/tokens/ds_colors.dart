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
  /// Superfície no tema claro (cinza muito claro para cards)
  static const Color surfaceLight = Color(0xFFF5F5F5);

  /// Superfície no tema escuro (cinza escuro para cards)
  static const Color surfaceDark = Color(0xFF1E1E1E);

  /// Texto sobre superfície no tema claro (preto)
  static const Color onSurfaceLight = Color(0xFF000000);

  /// Texto sobre superfície no tema escuro (branco)
  static const Color onSurfaceDark = Color(0xFFFFFFFF);

  // ============================================
  // Background Colors
  // ============================================
  /// Fundo no tema claro (branco)
  static const Color backgroundLight = Color(0xFFFFFFFF);

  /// Fundo no tema escuro (preto)
  static const Color backgroundDark = Color(0xFF121212);

  /// Cor preta
  static const Color _black = Color(0xFF000000);

  /// Cor branca
  static const Color _white = Color(0xFFFFFFFF);

  /// Retorna a cor de erro baseada no contexto do tema atual
  static Color error(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.light ? errorLight : errorDark;
  }

  /// Retorna a cor de aviso baseada no contexto do tema atual
  static Color warning(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.light ? _warningLight : _warningDark;
  }

  static onBackground(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.light ? _black : _white;
  }

  static onBackgroundInverse(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.light ? _white : _black;
  }
}
