import '../custom_date_time.dart';
import 'package:flutter/material.dart';
import '../water_and_calories_intake_text.dart';
import '../water_and_calorirs/water_intake.dart';
import '../../../../../../core/constants/const.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/constants/app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/widgets/main_button.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/water_and_calorirs/custom_row_meal_and_water.dart';





class AddWaterViewBody extends StatelessWidget {
  const AddWaterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const WaterAndCaloriesIntakeText(),
            SizedBox(height: 24.h),
            const Align(alignment: Alignment.centerLeft, child: CustomDateTime()),
            SizedBox(height: 14.h),
      Expanded(
        child: Stack(
         
                children: [
                  const CustomRowMealAndWater(),
                  Positioned(
                    top: 50.h,
                    left: 0,
                    right: 0,
                    child: CustomWaterContianer(),
                  ),
                ],
              ),
      ),
          ],
        ),
      ),
    );
  }
}

class CustomWaterContianer extends StatelessWidget {
  const CustomWaterContianer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(22.r),
      decoration: BoxDecoration(
        color: AppColor.black,
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Column(
       
       children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text("New water intake", style: AppStyles.body2,)),
       Align(
        alignment: Alignment.centerLeft,
        child: const WaterIntake(title:  '',)),
        SizedBox(
          height: 35.h,
        ),
        MainButton(color: AppColor.theme, text: 'Save', textColor: AppColor.black, onTap: (){},)
       ],
      )
    );
  }
}