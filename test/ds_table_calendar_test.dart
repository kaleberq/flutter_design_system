import 'package:flutter/material.dart';
import 'package:flutter_design_system/themes/ds_theme.dart';
import 'package:flutter_design_system/widgets/ds_table_calendar.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  final DateTime focusedDay = DateTime(2026, 9, 20);
  final DateTime firstDay = DateTime(2026, 1, 1);
  final DateTime lastDay = DateTime(2026, 12, 31);

  testWidgets('renders a themed table calendar', (WidgetTester tester) async {
    DateTime? selected;

    await tester.pumpWidget(
      MaterialApp(
        theme: DSTheme.light(),
        home: Scaffold(
          body: DsTableCalendar(
            focusedDay: focusedDay,
            firstDay: firstDay,
            lastDay: lastDay,
            currentDay: focusedDay,
            selectedDay: focusedDay,
            onDaySelected: ({required DateTime selectedDay, DateTime? focusedDay}) {
              selected = selectedDay;
            },
          ),
        ),
      ),
    );

    expect(find.byType(TableCalendar<void>), findsOneWidget);
    expect(find.text('September, 2026'), findsOneWidget);

    await tester.tap(find.text('15'));
    await tester.pump();

    expect(selected?.year, 2026);
    expect(selected?.month, 9);
    expect(selected?.day, 15);
  });
}
