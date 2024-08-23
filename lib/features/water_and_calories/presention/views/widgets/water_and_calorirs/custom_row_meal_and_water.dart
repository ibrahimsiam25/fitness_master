import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/constants/app_assets.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/water_and_calorirs/custom_meal_and_water_item.dart';


class CustomRowMealAndWater extends StatefulWidget {
  const CustomRowMealAndWater({super.key});

  @override
  State<CustomRowMealAndWater> createState() => _CustomRowMealAndWaterState();
}

class _CustomRowMealAndWaterState extends State<CustomRowMealAndWater> {
    List<String> mealAndWaterTextList = ["Add a meal", " Add water\nintake"];
  List<String> mealAndWaterIconList = [AppAssets.food, AppAssets.water];
 
  @override
  Widget build(BuildContext context) {
    return         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            2,
            (index) {
              return CustomMealAndWaterItem(
                text: mealAndWaterTextList[index],
                onTap: () {
                  if(index == 0){
                     GoRouter.of(context).push(AppRouter.kAddMeal);
                  }else if(index == 1){
                    GoRouter.of(context).push(AppRouter.kAddWater);
                  }
                },
              
                svgPicture: SvgPicture.asset(mealAndWaterIconList[index]), 
                number: index,
              );
            },
          ),
        );
  }
}