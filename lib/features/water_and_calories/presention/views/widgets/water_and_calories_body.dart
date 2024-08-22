import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../../core/constants/app_assets.dart';
import 'package:fitness_master/core/constants/const.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/custom_meal_and_water_item.dart';

class WaterAndCaloriesBody extends StatefulWidget {
  const WaterAndCaloriesBody({super.key});

  @override
  State<WaterAndCaloriesBody> createState() => _WaterAndCaloriesBodyState();
}

class _WaterAndCaloriesBodyState extends State<WaterAndCaloriesBody> {
  int no = 0;
  List<String> mealAndWaterTextList = ["Add a meal", " Add water\nintake"];
  List<String> mealAndWaterIconList = [AppAssets.food, AppAssets.water];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Water & Calories\nIntake",
                style: AppStyles.header1,
                textAlign: TextAlign.start,
              )),
          SizedBox(
            height: 24.h,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Aug 12, 2024",
                style: AppStyles.body2,
                textAlign: TextAlign.start,
              )),
          SizedBox(
            height: 24.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(2, (index) {
            return CustomMealAndWaterItem(
              text: mealAndWaterTextList[index],
              onTap: () {
                setState(() {
                  no = index;
                });
              },
              isClicked: index == no,
              svgPicture: SvgPicture.asset(mealAndWaterIconList[index]),
            );
          }))
        ],
      ),
    ));
  }
}
