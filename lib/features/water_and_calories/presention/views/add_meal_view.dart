import 'package:flutter/material.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/widgets/add_meal/add_meal_body.dart';

class AddMealView extends StatelessWidget {
  const AddMealView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  AddMealViewBody(),
    );
  }
}