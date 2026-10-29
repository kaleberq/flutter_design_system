import 'package:flutter/material.dart';
import 'package:flutter_design_system/enums/ds_direction_enum.dart';
import 'package:flutter_design_system/enums/ds_switcher_position_enum.dart';

class DSDualViewSlideSwitcher extends StatelessWidget {
  final DSSwitcherPositionEnum position;
  final Widget firstWidget;
  final Widget secondWidget;
  final int millisecondsTransition;
  final DSDirectionEnum direction;

  const DSDualViewSlideSwitcher({
    required this.position,
    required this.firstWidget,
    required this.secondWidget,
    this.millisecondsTransition = 200,
    this.direction = DSDirectionEnum.horizontal,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const ValueKey firstKey = ValueKey('firstWidget');
    return AnimatedSwitcher(
      duration: Duration(milliseconds: millisecondsTransition),
      layoutBuilder: (currentChild, previousChildren) {
        return Stack(
          children: <Widget>[
            ...previousChildren,
            if (currentChild != null) currentChild,
          ],
        );
      },
      transitionBuilder: (Widget child, Animation<double> animation) {
        switch (direction) {
          case DSDirectionEnum.horizontal:
            final inFromRight = Tween<Offset>(
              begin: const Offset(-1.1, 0.0),
              end: Offset.zero,
            ).animate(animation);

            final outToLeft = Tween<Offset>(
              begin: const Offset(1.1, 0.0),
              end: Offset.zero,
            ).animate(animation);

            final isEntering = child.key == firstKey;

            return SlideTransition(
              position: isEntering ? inFromRight : outToLeft,
              child: child,
            );

          case DSDirectionEnum.vertical:
            final inFromTop = Tween<Offset>(
              begin: const Offset(0.0, -1.1),
              end: Offset.zero,
            ).animate(animation);

            final outToBottom = Tween<Offset>(
              begin: const Offset(0.0, 1.1),
              end: Offset.zero,
            ).animate(animation);

            final isEntering = child.key == firstKey;

            return SlideTransition(
              position: isEntering ? inFromTop : outToBottom,
              child: child,
            );
        }
      },
      child: position == DSSwitcherPositionEnum.first
          ? KeyedSubtree(key: firstKey, child: firstWidget)
          : KeyedSubtree(
              key: const ValueKey('secondWidget'),
              child: secondWidget,
            ),
    );
  }
}
