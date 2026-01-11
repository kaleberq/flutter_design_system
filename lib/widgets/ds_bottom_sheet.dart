import 'package:flutter/material.dart';

showDSModalBottomSheet({
  required BuildContext context,
  required Widget widget,
}) {
  showModalBottomSheet(context: context, builder: (context) => widget);
}
