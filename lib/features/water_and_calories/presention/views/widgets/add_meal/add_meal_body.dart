import 'package:flutter/material.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/constants/app_color.dart';
import 'package:fitness_master/core/constants/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/widgets/main_button.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/custom_date_time.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/water_and_calories_intake_text.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/add_meal/custom_text_and_contianer.dart';

class AddMealViewBody extends StatelessWidget {
  const AddMealViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const WaterAndCaloriesIntakeText(),
            SizedBox(height: 24.h),
            const Align(alignment: Alignment.centerLeft, child: CustomDateTime()),
            SizedBox(height: 14.h),
            Container(
              padding: EdgeInsets.all(22.r),
              decoration: BoxDecoration(
                color: AppColor.black,
                borderRadius: BorderRadius.circular(14.0.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "New meal",
                    style: AppStyles.body2,
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "New of meal",
                    style: AppStyles.body1,
                  ),
                  SizedBox(height: 12.h),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.0.h),
                    decoration: BoxDecoration(
                      color: AppColor.background,
                      borderRadius: BorderRadius.circular(14.0.r),
                    ),
                    child: Text(
                      "Breakfast",
                      style: AppStyles.body400_14,
                    ),
                  ),
                  SizedBox(height: 20.h),
               const   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextAndContianer(
                        title: "Calories",
                        subTitle: "10",
                      ),
                      CustomTextAndContianer(
                        title: "Protein",
                        subTitle: "10",
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
               const   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextAndContianer(
                        title: "Fat",
                        subTitle: "10",
                      ),
                      CustomTextAndContianer(
                        title: "Carbohydrate",
                        subTitle: "10",
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  MainButton(
                    color: AppColor.theme,
                    text: "Save",
                    textColor: AppColor.black,
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

