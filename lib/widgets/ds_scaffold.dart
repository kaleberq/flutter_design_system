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
    final BoxDecoration gradientDecoration = BoxDecoration(
      gradient: RadialGradient(
        center: Alignment.topCenter,
        radius: 1.2,
        colors: <Color>[
          ds.primary.withValues(alpha: glowAlpha),
          Colors.transparent,
        ],
      ),
    );

    final bool reserveAppBarSpace =
        extendBodyBehindAppBar && appBar != null;

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
      body: reserveAppBarSpace
          ? Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Container(decoration: gradientDecoration),
                Padding(
                  padding: _contentPadding(context),
                  child: body,
                ),
              ],
            )
          : Container(
              width: double.infinity,
              height: double.infinity,
              decoration: gradientDecoration,
              padding: _contentPadding(context),
              child: body,
            ),
    );
  }

  EdgeInsetsGeometry _contentPadding(BuildContext context) {
    final bool reserveAppBarSpace =
        extendBodyBehindAppBar && appBar != null;
    final double topInset = reserveAppBarSpace
        ? MediaQuery.paddingOf(context).top + appBar!.preferredSize.height
        : 0;

    if (padding != null) {
      if (padding is EdgeInsets) {
        final EdgeInsets resolved = padding! as EdgeInsets;
        return EdgeInsets.only(
          left: resolved.left,
          right: resolved.right,
          top: resolved.top + topInset,
          bottom: resolved.bottom,
        );
      }
      return padding!;
    }

    return EdgeInsets.only(
      left: DSSpacing.md,
      right: DSSpacing.md,
      top: topInset + DSSpacing.sm,
      bottom: DSSpacing.sm,
    );
  }
}
