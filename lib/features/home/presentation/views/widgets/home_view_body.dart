import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import 'package:fitness_master/core/utils/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_assets.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/worout_for_the_week.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/todays_time_counter.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/custom_drob_contianer.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            CustomAppBar(
              title: "Home",
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kPlanningView);
              },
              icon: AppAssets.editIcon,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  SizedBox(
                    height: 24.h,
                  ),
                  const CustomDrobContainer(),
                  SizedBox(
                    height: 24.h,
                  ),
                  const TodaysTimeCounter(),
                  SizedBox(
                    height: 24.h,
                  ),
                  const WoroutForTheWeek(),
                  SizedBox(
                    height: 88.0.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
