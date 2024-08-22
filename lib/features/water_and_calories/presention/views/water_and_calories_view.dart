import 'package:flutter/material.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/water_and_calories_body.dart';

class WaterAndCaloriesView extends StatelessWidget {
  const WaterAndCaloriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  WaterAndCaloriesBody(), 
    );
  }
}