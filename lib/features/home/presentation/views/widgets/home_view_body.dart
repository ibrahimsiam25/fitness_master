<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:fitness_master/core/constants/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/todays_time_counter.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/custom_drob_contianer.dart';
=======
import 'package:fitness_master/features/home/presentation/views/widgets/custom_drob_contianer.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/todays_time_counter.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/worout_for_the_week.dart';
import 'package:flutter/material.dart';
import 'package:fitness_master/core/constants/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
>>>>>>> f816739ba07ffbea7b9c65504a8ba6e5c5f100ac


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        children: [
          SizedBox(
            height: 24.h,
          ),
          const CustomDrobContainer(),
          SizedBox(
            height: 24.h,
          ),
           const TodaysTimeCounter()]));
=======
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
      ],
    );
>>>>>>> f816739ba07ffbea7b9c65504a8ba6e5c5f100ac
  }
}
