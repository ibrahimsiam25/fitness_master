import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../../core/constants/app_color.dart';
import 'package:fitness_master/core/constants/const.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_assets.dart';

class WaterAndCaloriesBody extends StatelessWidget {
  const WaterAndCaloriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Water & Calories\nIntake",
                style: AppStyles.header1,
                textAlign: TextAlign.start,
              )),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Aug 12, 2024",
                style: AppStyles.body2,
                textAlign: TextAlign.start,
              )),
          Row(children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.r),
                color: AppColor.theme
              ),
              child: Column(
                children: [

SvgPicture.asset(AppAssets.food),
Text(
                "Add a meal",
                style: AppStyles.body2,
                textAlign: TextAlign.start,
              )
                ]
              ),
            )
          ])
        ],
      ),
    ));
  }
}
