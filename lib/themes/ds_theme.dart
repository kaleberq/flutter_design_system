import 'package:flutter/material.dart';
import 'package:flutter_design_system/tokens/ds_colors.dart';

/// Theme do design system
class DSTheme {
  DSTheme._();

  static const CardThemeData cardTheme = CardThemeData(elevation: 4);

  /// Theme claro
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme(
        /// Define o brilho geral do esquema de cores
        brightness: Brightness.light,

        /// Cor primária do tema, usada para elementos principais e interativos
        primary: DSColors.primaryLight,

        /// Cor do texto e ícones que aparecem sobre a cor primária
        onPrimary: DSColors.onPrimary,

        /// Cor secundária do tema, usada para elementos de destaque alternativos
        secondary: DSColors.secondaryLight,

        /// Cor do texto e ícones que aparecem sobre a cor secundária
        onSecondary: DSColors.onSecondary,

        /// Cor usada para indicar erros e estados de falha
        error: DSColors.errorLight,

        /// Cor do texto e ícones que aparecem sobre a cor de erro
        onError: DSColors.onError,

        /// Cor de fundo das superfícies (cards, sheets, dialogs)
        surface: DSColors.surfaceLight,

        /// Cor do texto e ícones que aparecem sobre a superfície
        onSurface: DSColors.onSurfaceLight,
      ),
      cardTheme: cardTheme,
      scaffoldBackgroundColor: DSColors.backgroundLight,
      useMaterial3: true,
    );
  }

  /// Theme escuro
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: ColorScheme(
        /// Define o brilho geral do esquema de cores
        brightness: Brightness.dark,

        /// Cor primária do tema, usada para elementos principais e interativos
        primary: DSColors.primaryDark,

        /// Cor do texto e ícones que aparecem sobre a cor primária
        onPrimary: DSColors.onPrimary,

        /// Cor secundária do tema, usada para elementos de destaque alternativos
        secondary: DSColors.secondaryDark,

        /// Cor do texto e ícones que aparecem sobre a cor secundária
        onSecondary: DSColors.onSecondary,

        /// Cor usada para indicar erros e estados de falha
        error: DSColors.errorDark,

        /// Cor do texto e ícones que aparecem sobre a cor de erro
        onError: DSColors.onError,

        /// Cor de fundo das superfícies (cards, sheets, dialogs)
        surface: DSColors.surfaceDark,

        /// Cor do texto e ícones que aparecem sobre a superfície
        onSurface: DSColors.onSurfaceDark,
      ),
      cardTheme: cardTheme,
      scaffoldBackgroundColor: DSColors.backgroundDark,
      useMaterial3: true,
    );
  }
}
