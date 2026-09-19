import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_design_system/extensions/ds_context_extension.dart';
import 'package:flutter_design_system/themes/ds_theme.dart';
import 'package:flutter_design_system/tokens/ds_colors.dart';
import 'package:flutter_design_system/widgets/ds_scaffold.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSTheme.of', () {
    testWidgets('exposes light theme colors', (WidgetTester tester) async {
      late BuildContext context;

      await tester.pumpWidget(
        MaterialApp(
          theme: DSTheme.light(),
          home: Builder(
            builder: (BuildContext builderContext) {
              context = builderContext;
              return const SizedBox.shrink();
            },
          ),
        ),
      );

      final DSTheme ds = DSTheme.of(context);

      expect(ds.primary, DSColors.primaryLight);
      expect(ds.onSurface, DSColors.onSurfaceLight);
      expect(ds.onSurfaceVariant, DSColors.onSurfaceVariantLight);
      expect(ds.error, DSColors.errorLight);
      expect(ds.outline, DSColors.outlineLight);
      expect(ds.outlineVariant, DSColors.outlineVariantLight);
      expect(ds.errorContainer, DSColors.errorContainerLight);
      expect(ds.onErrorContainer, DSColors.onErrorContainerLight);
      expect(ds.grey, DSColors.darkGrey);
      expect(
        ds.disabledPrimary(),
        DSColors.primaryLight.withValues(alpha: 0.4),
      );
      expect(ds.isDark, isFalse);
      expect(ds.scheme.surfaceTint, Colors.transparent);
      expect(ds.cardColor, DSColors.surfaceLight);
      expect(ds.systemOverlayStyle.statusBarIconBrightness, Brightness.dark);
      expect(Theme.of(context).floatingActionButtonTheme.elevation, 2);
    });

    testWidgets('exposes dark theme colors', (WidgetTester tester) async {
      late BuildContext context;

      await tester.pumpWidget(
        MaterialApp(
          theme: DSTheme.dark(),
          home: Builder(
            builder: (BuildContext builderContext) {
              context = builderContext;
              return const SizedBox.shrink();
            },
          ),
        ),
      );

      final DSTheme ds = DSTheme.of(context);

      expect(ds.primary, DSColors.primaryDark);
      expect(ds.onSurface, DSColors.onSurfaceDark);
      expect(ds.onSurfaceVariant, DSColors.onSurfaceVariantDark);
      expect(ds.error, DSColors.errorDark);
      expect(ds.outline, DSColors.outlineDark);
      expect(ds.outlineVariant, DSColors.outlineVariantDark);
      expect(ds.errorContainer, DSColors.errorContainerDark);
      expect(ds.onErrorContainer, DSColors.onErrorContainerDark);
      expect(ds.grey, DSColors.lightGrey);
      expect(ds.isDark, isTrue);
      expect(ds.cardColor, DSColors.surfaceDark.withValues(alpha: 0.55));
      expect(ds.systemOverlayStyle.statusBarIconBrightness, Brightness.light);
      expect(Theme.of(context).floatingActionButtonTheme.elevation, 6);
    });

    testWidgets('context.ds delegates to DSTheme.of', (
      WidgetTester tester,
    ) async {
      late BuildContext context;

      await tester.pumpWidget(
        MaterialApp(
          theme: DSTheme.light(),
          home: Builder(
            builder: (BuildContext builderContext) {
              context = builderContext;
              return const SizedBox.shrink();
            },
          ),
        ),
      );

      expect(context.ds.primary, DSTheme.of(context).primary);
    });

    testWidgets('light cardShape uses outline variant border', (
      WidgetTester tester,
    ) async {
      late BuildContext context;

      await tester.pumpWidget(
        MaterialApp(
          theme: DSTheme.light(),
          home: Builder(
            builder: (BuildContext builderContext) {
              context = builderContext;
              return const SizedBox.shrink();
            },
          ),
        ),
      );

      final RoundedRectangleBorder shape =
          DSTheme.of(context).cardShape as RoundedRectangleBorder;
      expect(shape.side.color, DSColors.outlineVariantLight);
    });
  });

  group('DsScaffold', () {
    testWidgets('does not paint a glow gradient in light mode', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DSTheme.light(),
          home: const DsScaffold(body: SizedBox.shrink()),
        ),
      );

      expect(
        find.byWidgetPredicate((Widget widget) {
          if (widget is! DecoratedBox) {
            return false;
          }
          final Decoration decoration = widget.decoration;
          return decoration is BoxDecoration &&
              decoration.gradient is RadialGradient;
        }),
        findsNothing,
      );
      final AnnotatedRegion<SystemUiOverlayStyle> overlay = tester
          .widget<AnnotatedRegion<SystemUiOverlayStyle>>(
            find.byType(AnnotatedRegion<SystemUiOverlayStyle>),
          );
      expect(overlay.value.statusBarIconBrightness, Brightness.dark);
    });
  });
}
