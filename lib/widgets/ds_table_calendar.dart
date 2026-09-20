import 'package:flutter/material.dart';
import 'package:flutter_design_system/extensions/ds_context_extension.dart';
import 'package:flutter_design_system/themes/ds_theme.dart';
import 'package:flutter_design_system/tokens/ds_spacing.dart';
import 'package:flutter_design_system/tokens/ds_typography.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class DsTableCalendar extends StatelessWidget {
  final DateTime focusedDay;
  final DateTime firstDay;
  final DateTime lastDay;
  final DateTime? currentDay;
  final DateTime? selectedDay;
  final void Function({required DateTime selectedDay, DateTime? focusedDay})
  onDaySelected;
  final List<DateTime>? enabledDayPredicate;
  final String? locale;

  const DsTableCalendar({
    super.key,
    required this.focusedDay,
    required this.firstDay,
    required this.lastDay,
    required this.onDaySelected,
    this.currentDay,
    this.selectedDay,
    this.enabledDayPredicate,
    this.locale,
  });

  @override
  Widget build(BuildContext context) {
    final DSTheme ds = context.ds;
    final String resolvedLocale =
        locale ?? Localizations.localeOf(context).toString();
    final TextStyle dayTextStyle = DSTypographyRegular.labelSmall.copyWith(
      color: ds.onSurface,
    );
    final TextStyle mutedDayTextStyle = DSTypographyRegular.labelSmall.copyWith(
      color: ds.onSurfaceVariant,
    );

    return TableCalendar<void>(
      availableGestures: AvailableGestures.horizontalSwipe,
      rowHeight: 40,
      focusedDay: focusedDay,
      firstDay: firstDay,
      lastDay: lastDay,
      currentDay: currentDay,
      locale: resolvedLocale,
      headerStyle: HeaderStyle(
        titleCentered: true,
        formatButtonVisible: false,
        headerPadding: const EdgeInsets.symmetric(vertical: DSSpacing.sm),
        titleTextStyle: DSTypographyMedium.labelSmall.copyWith(
          color: ds.onSurface,
        ),
        leftChevronIcon: Icon(Icons.chevron_left, color: ds.onSurface),
        rightChevronIcon: Icon(Icons.chevron_right, color: ds.onSurface),
        titleTextFormatter: (DateTime date, dynamic locale) =>
            _capitalize(DateFormat('MMMM, yyyy', locale).format(date)),
      ),
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: mutedDayTextStyle,
        weekendStyle: mutedDayTextStyle,
        dowTextFormatter: (DateTime date, dynamic locale) =>
            DateFormat.E(locale).format(date)[0].toUpperCase(),
      ),
      calendarStyle: CalendarStyle(
        defaultTextStyle: dayTextStyle,
        weekendTextStyle: dayTextStyle,
        outsideTextStyle: mutedDayTextStyle,
        disabledTextStyle: DSTypographyRegular.labelSmall.copyWith(
          color: ds.grey.withValues(alpha: 0.4),
        ),
        todayTextStyle: DSTypographyMedium.labelSmall.copyWith(
          color: ds.onPrimary,
        ),
        selectedTextStyle: DSTypographyMedium.labelSmall.copyWith(
          color: ds.onPrimary,
        ),
        todayDecoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ds.primary,
        ),
        selectedDecoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ds.primary,
        ),
      ),
      selectedDayPredicate: selectedDay == null
          ? null
          : (DateTime day) => isSameDay(day, selectedDay),
      onDaySelected: (DateTime selected, DateTime focused) =>
          onDaySelected(selectedDay: selected, focusedDay: focused),
      enabledDayPredicate: enabledDayPredicate == null
          ? null
          : (DateTime date) => enabledDayPredicate!.any(
              (DateTime selectableDay) => isSameDay(date, selectableDay),
            ),
    );
  }
}

String _capitalize(String value) {
  if (value.isEmpty) {
    return value;
  }
  return '${value[0].toUpperCase()}${value.substring(1)}';
}
