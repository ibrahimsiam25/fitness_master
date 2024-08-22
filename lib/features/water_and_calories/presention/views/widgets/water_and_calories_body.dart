import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/custom_day.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/custom_meal_data.dart';
import 'package:flutter/material.dart';
import 'package:fitness_master/core/constants/const.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/custom_calendar.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/custom_date_time.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/custom_row_meal_and_water.dart';

class WaterAndCaloriesBody extends StatelessWidget {
  const WaterAndCaloriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Water & Calories\nIntake",
                style: AppStyles.header1,
                textAlign: TextAlign.start,
              )),
          SizedBox(
            height: 24.h,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: CustomDateTime(),
          ),
          SizedBox(
            height: 24.h,
          ),
          const CustomRowMealAndWater(),
          SizedBox(
            height: 24.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 20.0.h),
            decoration: BoxDecoration(
              color: AppColor.black,
              borderRadius: BorderRadius.circular(14.0.r),
            ),
            child: const CustomMeal(
              name: 'Breakfast',
              cross: CrossAxisAlignment.center,
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          const CustomCalendar(
            isDrobed: true,
          ),
          SizedBox(
            height: 24.h,
          ),
          const CustomDay(),
          SizedBox(height: 80.0.h),
        ],
      ),
    );
  }
}
