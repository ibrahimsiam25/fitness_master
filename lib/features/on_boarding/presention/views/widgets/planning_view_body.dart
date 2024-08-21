import 'package:flutter/material.dart';
import 'package:fitness_master/core/constants/const.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/features/on_boarding/presention/views/widgets/custom_row_goal.dart';
import 'package:fitness_master/features/on_boarding/presention/views/widgets/custom_number_picker.dart';

class PlanningViewBody extends StatefulWidget {
  const PlanningViewBody({super.key});

  @override
  State<PlanningViewBody> createState() => _PlanningViewBodyState();
}

class _PlanningViewBodyState extends State<PlanningViewBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Planning",
                style: AppStyles.header1,
              ),
            ),
            SizedBox(height: 16.h),
            Text(
              "My goal is to:",
              style: AppStyles.body1,
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 12.h,
            ),
           const CustomRowGoal(),
            SizedBox(
              height: 60.h,
            ),
            Row(children: [
              SizedBox(
                width:178.w ,
                child: Text(
                  "How many days a week do you plan to exercise?",    
                  style: AppStyles.body1,
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(width:28.w ,),
             const CustomNumberPicker(),
              SizedBox(width:4.w ),
              Text("day",style: AppStyles.body1,)
            ])
          ],
        ),
      ),
    );
  }
}
