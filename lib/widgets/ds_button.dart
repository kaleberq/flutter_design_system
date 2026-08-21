import 'package:flutter/material.dart';
import 'package:flutter_design_system/enums/ds_button_type.dart';
import 'package:flutter_design_system/tokens/ds_colors.dart';
import 'package:flutter_design_system/tokens/ds_spacing.dart';

class DsButton extends StatelessWidget {
  final String text;
  final VoidCallback? function;
  final bool isEnable;
  final DsButtonType type;
  final Color color;
  final TextStyle? typographyStyle;
  final Widget? iconLeft;
  final Widget? iconRight;

  const DsButton({
    super.key,
    required this.text,
    required this.function,
    this.isEnable = true,
    this.type = DsButtonType.elevated,
    this.color = DSColors.primary,
    this.typographyStyle,
    this.iconLeft,
    this.iconRight,
  });

  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = isEnable ? function : null;
    final Widget child = _ButtonContent(
      text: text,
      typographyStyle: typographyStyle,
      iconLeft: iconLeft,
      iconRight: iconRight,
    );

    switch (type) {
      case DsButtonType.elevated:
        return ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: DSColors.onPrimary,
            disabledBackgroundColor: color.withValues(alpha: 0.4),
            disabledForegroundColor: DSColors.onPrimary.withValues(alpha: 0.7),
          ),
          child: child,
        );
      case DsButtonType.outlined:
        return OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            foregroundColor: color,
            disabledForegroundColor: color.withValues(alpha: 0.4),
            side: BorderSide(
              color: isEnable ? color : color.withValues(alpha: 0.4),
            ),
          ),
          child: child,
        );
      case DsButtonType.text:
        return TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            foregroundColor: color,
            disabledForegroundColor: color.withValues(alpha: 0.4),
          ),
          child: child,
        );
    }
  }
}

class _ButtonContent extends StatelessWidget {
  final String text;
  final TextStyle? typographyStyle;
  final Widget? iconLeft;
  final Widget? iconRight;

  const _ButtonContent({
    required this.text,
    this.typographyStyle,
    this.iconLeft,
    this.iconRight,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (iconLeft != null) ...[
          iconLeft!,
          const SizedBox(width: DSSpacing.sm),
        ],
        Text(text, style: typographyStyle),
        if (iconRight != null) ...[
          const SizedBox(width: DSSpacing.sm),
          iconRight!,
        ],
      ],
    );
  }
}
