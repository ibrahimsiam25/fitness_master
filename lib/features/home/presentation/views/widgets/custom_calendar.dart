import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../../core/utils/app_styles.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalendarWidget extends StatefulWidget {
  final bool isDrobed;

  const CalendarWidget({super.key, this.isDrobed = false});
  @override
  CalendarWidgetState createState() => CalendarWidgetState();
}

class CalendarWidgetState extends State<CalendarWidget> {
  final Set<DateTime> _selectedDays = {};

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.isDrobed,
      child: Container(
        padding: EdgeInsets.only(top: 20.h),
        child: TableCalendar(
          daysOfWeekVisible: false,
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: DateTime.now(),
          selectedDayPredicate: (day) {
            return _selectedDays
                .any((selectedDay) => isSameDay(selectedDay, day));
          },
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              if (_selectedDays.contains(selectedDay)) {
                _selectedDays.remove(selectedDay);
              } else {
                _selectedDays.add(selectedDay);
              }
            });
          },
          calendarStyle: CalendarStyle(
            defaultTextStyle: AppStyles.body5,
            weekendTextStyle: AppStyles.body5,
            todayTextStyle: AppStyles.body5.copyWith(color: AppColor.theme),
            todayDecoration: const BoxDecoration(),
            outsideTextStyle:
                AppStyles.body5.copyWith(color: AppColor.darkGray),
            selectedDecoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColor.theme, // Border color
                width: 2.0, // Border width
              ),
            ),
          ),
          headerStyle: HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
            titleTextStyle: AppStyles.body2,
            leftChevronIcon: SvgPicture.asset(AppAssets.arrowLeft),
            rightChevronIcon: SvgPicture.asset(AppAssets.arrowRight),
          ),
        ),
      ),
    );
  }
}
