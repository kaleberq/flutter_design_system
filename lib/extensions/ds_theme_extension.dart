import 'package:flutter/material.dart';

/// Extensão para facilitar o acesso ao ColorScheme através do BuildContext
extension DSThemeExtension on BuildContext {
  /// Retorna o ColorScheme do tema atual
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
