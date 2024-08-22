import 'package:flutter/material.dart';
import 'package:fitness_master/core/utils/app_styles.dart';

class WaterAndCaloriesBody extends StatelessWidget {
  const WaterAndCaloriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: 
    Column(
      children: [
        Text("Water & Calories \n Intake",style:AppStyles.header1,),
      ],
    )
    );
  }
}