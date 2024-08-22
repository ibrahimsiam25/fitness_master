import 'package:fitness_master/features/home/presentation/views/widgets/todays_time_counter.dart';
import 'package:flutter/material.dart';
import 'package:fitness_master/core/constants/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
<<<<<<< HEAD
import 'package:fitness_master/features/home/presentation/views/widgets/Todays_time_counter.dart';
=======
>>>>>>> 7598dbc15301407b34e2f75ce657f03b3c93033e
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
<<<<<<< HEAD
           const TodaysTimeCounter()
=======
          const TodaysTimeCounter(),
>>>>>>> 7598dbc15301407b34e2f75ce657f03b3c93033e
        ],
      ),
    );
  }
}
