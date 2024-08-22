import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/custom_day.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/custom_meal.dart';
import 'package:flutter/material.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WaterAndCaloriesBody extends StatelessWidget {
  const WaterAndCaloriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: ListView(
          padding: const EdgeInsets.all(0.0),
          children: [
            Text(
              "Water & Calories\nIntake",
              style: AppStyles.header1,
            ),
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 20.0.h),
              decoration: BoxDecoration(
                color: AppColor.black,
                borderRadius: BorderRadius.circular(14.0.r),
              ),
              child: const CustomMeal(
                name: 'Breakfast',
                cross: CrossAxisAlignment.center,
              ),
            ),
            SizedBox(height: 24.0.h),
            const CustomDay(),
          ],
        ),
      ),
    );
  }
}
