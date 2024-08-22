import 'package:fitness_master/features/home/presentation/views/widgets/worout_for_the_week.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(0.0),
      children: [
        SizedBox(
          height: 100.0.w,
        ),
        const WoroutForTheWeek(),
      ],
    );
  }
}
