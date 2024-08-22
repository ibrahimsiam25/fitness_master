import 'package:flutter/material.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/constants/app_color.dart';
import 'package:fitness_master/core/constants/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/custom_date_time.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/water_and_calories_intake_text.dart';

class AddMealViewBody extends StatelessWidget {
  const AddMealViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            const WaterAndCaloriesIntakeText(),
            SizedBox(
              height: 24.h,
            ),
            const Align(
                alignment: Alignment.centerLeft, child: CustomDateTime()),
            SizedBox(
              height: 14.h,
            ),
            Container(
              padding: EdgeInsets.all(22.r),
              decoration: BoxDecoration(
                color: AppColor.black,
                borderRadius: BorderRadius.circular(14.0.r),
              ),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "New meal",
                        style: AppStyles.body2,
                      )),
                  SizedBox(
                    height: 20.h,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "New of meal",
                        style: AppStyles.body1,
                      ),
                      
                      )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
