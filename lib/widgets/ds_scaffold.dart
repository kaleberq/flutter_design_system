import 'package:flutter/material.dart';
import 'package:flutter_design_system/extensions/ds_context_extension.dart';
import 'package:flutter_design_system/themes/ds_theme.dart';
import 'package:flutter_design_system/tokens/ds_spacing.dart';

class DsScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final Widget? drawer;
  final Widget? endDrawer;
  final Color? backgroundColor;
  final bool resizeToAvoidBottomInset;
  final bool extendBody;
  final bool extendBodyBehindAppBar;
  final EdgeInsetsGeometry? padding;

  const DsScaffold({
    super.key,
    required this.body,
    this.appBar,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.drawer,
    this.endDrawer,
    this.backgroundColor,
    this.resizeToAvoidBottomInset = true,
    this.extendBody = false,
    this.extendBodyBehindAppBar = true,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final DSTheme ds = context.ds;
    final Color resolvedBackgroundColor =
        backgroundColor ?? ds.scaffoldBackground;
    final double glowAlpha = ds.isDark ? 0.22 : 0.12;

    return Scaffold(
      appBar: appBar,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
      drawer: drawer,
      endDrawer: endDrawer,
      backgroundColor: resolvedBackgroundColor,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      extendBody: extendBody,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topCenter,
            radius: 1.2,
            colors: <Color>[
              ds.primary.withValues(alpha: glowAlpha),
              Colors.transparent,
            ],
          ),
        ),
        padding:
            padding ??
            EdgeInsets.only(
              left: DSSpacing.md,
              right: DSSpacing.md,
              top: DSSpacing.sm,
              bottom: DSSpacing.sm,
            ),
        child: body,
      ),
    );
  }
}
