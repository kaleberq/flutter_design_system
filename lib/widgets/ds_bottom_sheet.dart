import 'package:flutter/material.dart';

showDSModalBottomSheet({
  required BuildContext context,
  required Widget widget,
  bool isDismissible = true,
  bool enableDrag = true,
}) {
  showModalBottomSheet(
    enableDrag: enableDrag,
    isDismissible: isDismissible,

    context: context,
    builder: (context) => SafeArea(child: widget),
  );
}
