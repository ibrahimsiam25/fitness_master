import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/app_router.dart';
import 'package:fitness_master/core/constants/const.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/features/on_boarding/presention/views/widgets/planing/custom_row_goal.dart';
import 'package:fitness_master/features/on_boarding/presention/views/widgets/onboarding/custom_button.dart';
import 'package:fitness_master/features/on_boarding/presention/views/widgets/planing/custom_row_for_min_and_day.dart';
class PlanningViewBody extends StatelessWidget {
  const PlanningViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.h),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Planning",
              style: AppStyles.header1,
            ),
          ),
          SizedBox(height: 60.h),
          Text(
            "My goal is to:",
            style: AppStyles.body1,
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 12.h),
          const CustomRowGoal(),
          const Spacer(),
          const CustomRowForMinAndDay(
            text: "How many days a week\ndo you plan to exercise?",
            title: "day",
            currentValue: 3,
            maxValue: 7,
            minValue: 1,
          ),
          const Spacer(),
          const CustomRowForMinAndDay(
            text: "How much time will you\ncover exercise?",
            title: "min",
            currentValue: 20,
            maxValue: 200,
            minValue: 15,
          ),
          const Spacer(),
          CustomButton(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kLimitedFunctionality);
            },
          ),
          const Spacer(),
        ],
      ),
    );
  }
}