import 'package:flutter/material.dart';
import 'package:fitness_master/core/constants/const.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlanningViewBody extends StatelessWidget {
  const PlanningViewBody({super.key});

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
          ],
        ),
      ),
    );
  }
}
