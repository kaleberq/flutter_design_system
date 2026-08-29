import 'package:flutter/material.dart';
import 'package:flutter_design_system/extensions/ds_context_extension.dart';
import 'package:flutter_design_system/themes/ds_theme.dart';
import 'package:flutter_design_system/tokens/ds_colors.dart';
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
      expect(ds.error, DSColors.errorLight);
      expect(ds.outline, DSColors.outlineLight);
      expect(ds.errorContainer, DSColors.errorContainerLight);
      expect(ds.onErrorContainer, DSColors.onErrorContainerLight);
      expect(ds.grey, DSColors.darkGrey);
      expect(ds.disabledPrimary(), DSColors.primaryLight.withValues(alpha: 0.4));
      expect(ds.isDark, isFalse);
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
      expect(ds.error, DSColors.errorDark);
      expect(ds.outline, DSColors.outlineDark);
      expect(ds.errorContainer, DSColors.errorContainerDark);
      expect(ds.onErrorContainer, DSColors.onErrorContainerDark);
      expect(ds.grey, DSColors.lightGrey);
      expect(ds.isDark, isTrue);
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
  });
}
