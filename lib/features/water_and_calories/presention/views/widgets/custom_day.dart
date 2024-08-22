import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/custom_date_time.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/custom_meal.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/water_intake.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDay extends StatelessWidget {
  const CustomDay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.black, borderRadius: BorderRadius.circular(14.0.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 20.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomDateTime(),
            SizedBox(height: 20.0.h),
            const CustomMeal(
              name: 'Breakfast',
            ),
            SizedBox(height: 24.0.h),
            const CustomMeal(
              name: 'Dinner',
            ),
            SizedBox(height: 24.0.h),
            const WaterIntake()
          ],
        ),
      ),
    );
  }
}
