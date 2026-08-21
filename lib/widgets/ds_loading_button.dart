import 'package:flutter/material.dart';
import 'package:flutter_design_system/enums/ds_button_type.dart';
import 'package:flutter_design_system/enums/ds_loading_button_icon_position.dart';
import 'package:flutter_design_system/tokens/ds_colors.dart';
import 'package:flutter_design_system/tokens/ds_spacing.dart';
import 'package:flutter_design_system/widgets/ds_button.dart';

class DsLoadingButton extends StatefulWidget {
  final bool isEnable;
  final Future<void> Function() function;
  final String text;
  final TextStyle? typographyStyle;
  final Widget? icon;
  final DsLoadingButtonIconPosition? iconPosition;
  final DsButtonType? buttonType;
  final Color color;
  final Function(void Function() methodFromChild)? builder;

  const DsLoadingButton({
    super.key,
    required this.function,
    required this.text,
    required this.isEnable,
    this.typographyStyle,
    this.icon,
    this.iconPosition,
    this.buttonType,
    this.color = DSColors.primary,
    this.builder,
  });

  @override
  State<DsLoadingButton> createState() => _DsLoadingButtonState();
}

class _DsLoadingButtonState extends State<DsLoadingButton> {
  bool _isBtnEnable = true;

  Future<void> _onPressed() async {
    if (!_isBtnEnable) return;

    setState(() => _isBtnEnable = false);

    try {
      await widget.function();
    } finally {
      if (mounted) {
        setState(() => _isBtnEnable = true);
      }
    }
  }

  Widget get _loadingIndicator => SizedBox(
        key: const Key('loading'),
        width: DSSpacing.md,
        height: DSSpacing.md,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: widget.buttonType == DsButtonType.outlined ||
                  widget.buttonType == DsButtonType.text
              ? widget.color
              : DSColors.white,
        ),
      );

  @override
  Widget build(BuildContext context) {
    final bool showLoading = !_isBtnEnable;
    final bool isLeft =
        widget.iconPosition == DsLoadingButtonIconPosition.left;
    final Widget? icon = showLoading ? _loadingIndicator : widget.icon;

    widget.builder?.call(_onPressed);

    return DsButton(
      key: const Key('Button'),
      iconLeft: isLeft ? icon : null,
      iconRight: !isLeft ? icon : null,
      type: widget.buttonType ?? DsButtonType.elevated,
      text: widget.text,
      typographyStyle: widget.typographyStyle,
      isEnable: widget.isEnable,
      color: widget.color,
      function: _onPressed,
    );
  }
}
