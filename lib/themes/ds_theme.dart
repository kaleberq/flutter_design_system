import 'package:flutter/material.dart';
import 'package:flutter_design_system/tokens/ds_colors.dart';
import 'package:flutter_design_system/tokens/ds_typography.dart';
import 'package:flutter_design_system/tokens/ds_spacing.dart';

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

      /// Estilo para botões elevados
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

      /// Estilo para botões de texto
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

      /// Estilo para botões outlined
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

      /// Estilo para botões elevados
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

      /// Estilo para botões de texto
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

      /// Estilo para botões outlined
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
