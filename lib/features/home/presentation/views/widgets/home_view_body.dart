import 'package:fitness_master/core/constants/app_assets.dart';
import 'package:fitness_master/core/utils/app_router.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/worout_for_the_week.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/todays_time_counter.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/custom_drob_contianer.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        children: [
          SizedBox(
            height: 54.h,
          ),
          Row(
            children: [
              Text(
                'Home',
                style: AppStyles.header1,
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kPlanningView);
                },
                child: SvgPicture.asset(
                  AppAssets.editIcon,
                ),
              )
            ],
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
    );
  }
}
