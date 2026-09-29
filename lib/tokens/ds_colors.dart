import 'package:flutter/material.dart';

/// Cores do design system
class DSColors {
  DSColors._();

  // ============================================
  // Primary Colors
  // ============================================
  /// Cor primária principal
  static const Color primary = Color(0xFF6200EE);

  /// Cor primária — identidade visual roxa, usada em elementos interativos
  /// (checkbox, foco) tanto no tema claro quanto no escuro.
  static const Color primaryLight = Color(0xFF8B5CF6);

  /// Cor primária escura (para tema dark) — usada em elementos interativos
  /// (checkbox, foco, botões outline/texto), clara o bastante para servir
  /// de acento sobre fundos escuros.
  static const Color primaryDark = Color(0xFF8B5CF6);

  /// Roxo mais escuro para botões preenchidos e texto de destaque (preço)
  /// no tema claro — garante contraste com texto branco e com o fundo claro.
  static const Color primaryStrongLight = Color(0xFF7C3AED);

  /// Roxo mais forte para botões preenchidos (elevated/FAB) no tema escuro.
  static const Color primaryButtonDark = Color(0xFF5B00D6);

  /// Roxo primário claro o bastante para uso como texto de destaque
  /// (ex.: preços) sobre fundos escuros.
  static const Color primaryTextDark = Color(0xFFA78BFA);

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

  /// Borda secundária no tema claro (cards, divisores)
  static const Color outlineVariantLight = Color(0xFFE7E5EA);

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

  /// Texto sobre superfície no tema claro (quase preto, evita o contraste
  /// excessivo do preto puro sobre fundos claros)
  static const Color onSurfaceLight = Color(0xFF1C1B1F);

  /// Texto sobre superfície no tema escuro (quase branco, evita o brilho
  /// excessivo do branco puro sobre fundos escuros)
  static const Color onSurfaceDark = Color(0xFFF5F5F5);

  /// Rótulos e texto secundário no tema claro
  static const Color onSurfaceVariantLight = Color(0xFF49454F);

  /// Rótulos e texto secundário no tema escuro
  static const Color onSurfaceVariantDark = Color(0xFFB8B8C2);

  /// Base do shimmer no tema claro (independente da surface branca)
  static const Color shimmerBaseLight = outlineVariantLight;

  /// Superfície secundária no tema claro — leve tom de lavanda para
  /// destacar sutilmente cards, cabeçalhos e rodapés sem dominar a tela.
  static const Color surfaceSecondaryLight = Color(0xFFFAF7FF);

  /// Superfície secundária no tema escuro — mesmo papel do
  /// [surfaceSecondaryLight], levemente mais clara que [surfaceDark].
  static const Color surfaceSecondaryDark = Color(0xFF24202D);

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

  /// Cinza para texto terciário no tema claro (ex.: quantidade, validade)
  static const Color darkGrey = Color(0xFF6F6A73);

  /// Cor cinza claro (tema claro / shimmer)
  static const Color lightGrey = Color(0xFFBDBDBD);

  /// Cinza para texto terciário no tema escuro (ex.: quantidade, validade)
  static const Color greyDark = Color(0xFF8A8A96);

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
    return brightness == Brightness.light ? darkGrey : greyDark;
  }
}
