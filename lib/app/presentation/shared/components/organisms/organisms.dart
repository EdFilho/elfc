import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalendar extends StatelessWidget {
  final DateTime focusedDay;
  final DateTime selectedDay;
  final void Function(DateTime, DateTime) onDaySelected;

  const CustomCalendar({
    super.key,
    required this.focusedDay,
    required this.selectedDay,
    required this.onDaySelected,
  });

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      locale: "pt-BR",
      availableCalendarFormats: const {CalendarFormat.month: 'Mês'},
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: focusedDay,
      onDaySelected: onDaySelected,
      selectedDayPredicate: (day) {
        return isSameDay(selectedDay, day);
      },
      calendarBuilders: CalendarBuilders(
        defaultBuilder: (context, date, focusedDay) {
          return Container(
            margin: const EdgeInsets.all(2),
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 4),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    child: Text(
                      date.day.toString(),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        todayBuilder: (context, date, focusedDay) {
          return Container(
            margin: const EdgeInsets.all(2),
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 4),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: Text(
                      date.day.toString(),
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        selectedBuilder: (context, date, focusedDay) {
          return Container(
            margin: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 4),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: focusedDay.day == DateTime.now().day
                          ? Theme.of(context).colorScheme.primary
                          : Colors.transparent,
                    ),
                    child: Text(
                      date.day.toString(),
                      style: focusedDay.day == DateTime.now().day
                          ? Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                              )
                          : Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
