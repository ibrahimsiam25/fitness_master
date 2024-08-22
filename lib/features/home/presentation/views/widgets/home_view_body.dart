import 'package:fitness_master/features/home/presentation/views/widgets/custom_drob_contianer.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/todays_time_counter.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/worout_for_the_week.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      children: [
        SizedBox(
          height: 24.h,
        ),
        const CustomDrobContainer(),
        SizedBox(
          height: 24.h,
        ),
        const TodaysTimeCounter(),
        SizedBox(
          height: 24.h,
        ),
        const WoroutForTheWeek(),
        SizedBox(
          height: 100.0.h,
        ),
      ],
    );
  }
}
