import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_router.dart';
import 'package:fitness_master/core/constants/const.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/features/on_boarding/presention/views/widgets/custom_button.dart';
import 'package:fitness_master/features/on_boarding/presention/views/widgets/custom_row_goal.dart';
import 'package:fitness_master/features/on_boarding/presention/views/widgets/custom_row_for_min_and_day.dart';


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
            const Spacer(
              flex: 1,
            ),
            const CustomRowForMinAndDay(
              text: "How many days a week do you plan to exercise?",
              title: "day",
              currentValue: 3,
              maxValue: 7,
              minValue: 1,
            ),
            const Spacer(
              flex: 1,
            ),
            const CustomRowForMinAndDay(
              text: "How much time will you cover exercise?",
              title: "min",
              currentValue: 20,
              maxValue: 200,
              minValue: 15,
            ),
            const Spacer(
              flex: 1,
            ),
            CustomButton(onTap: () { 
               GoRouter.of(context).push(AppRouter.kLimitedFunctionality);
             },),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}

