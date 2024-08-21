import 'package:flutter/material.dart';
import 'package:fitness_master/features/on_boarding/presention/views/widgets/planning_goal_item.dart';

class CustomRowGoal extends StatefulWidget {
  const CustomRowGoal({super.key});

  @override
  State<CustomRowGoal> createState() => _CustomRowGoalState();
}

class _CustomRowGoalState extends State<CustomRowGoal> {
    List<String> planningList = [
    "lose weight",
    "build muscle",
    "Lead a healthy lifestyle"
  ];
  int no = 0;
  @override
  Widget build(BuildContext context) {
    return  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(3, (index) {
                return PlanningGoalItem(
                    text: planningList[index],
                    onTap: () {
                      setState(() {
                        no = index;
                      });
                    },
                    isClicked: no == index);
              }),
            );
  }
}