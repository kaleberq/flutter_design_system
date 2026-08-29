import 'package:flutter/material.dart';
import 'package:flutter_design_system/themes/ds_theme.dart';

extension DsContext on BuildContext {
  DSTheme get ds => DSTheme.of(this);
}
