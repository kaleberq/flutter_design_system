import 'package:flutter/material.dart';

showDSModalBottomSheet({required BuildContext context, required Widget child}) {
  showModalBottomSheet(context: context, builder: (context) => child);
}
