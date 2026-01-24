import 'package:flutter/material.dart';
import 'package:flutter_design_system/enums/ds_divider_type.dart';
import 'package:flutter_design_system/tokens/ds_colors.dart';

class DsDivider extends StatelessWidget {
  final DsDividerType dividerType;
  const DsDivider({this.dividerType = DsDividerType.horizontal, super.key});

  @override
  Widget build(BuildContext context) {
    const double size = 2;
    return Container(
      constraints: dividerType == DsDividerType.horizontal
          ? const BoxConstraints.tightFor(height: size)
          : const BoxConstraints.tightFor(width: size),
      color: DSColors.resolveGreyColor(context),
    );
  }
}
