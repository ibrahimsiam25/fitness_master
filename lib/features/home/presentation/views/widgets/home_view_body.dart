import 'package:flutter/material.dart';
import 'package:fitness_master/core/constants/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/todays_time_counter.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/custom_drob_contianer.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        children: [
          SizedBox(
            height: 24.h,
          ),
          const CustomDrobContainer(),
          SizedBox(
            height: 24.h,
          ),
          // const TodaysTimeCounter()
        ],
      ),
    );
  }
}
