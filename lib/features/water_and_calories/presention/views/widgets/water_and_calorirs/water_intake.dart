// ignore_for_file: deprecated_member_use
import 'package:fitness_master/core/constants/app_assets.dart';
import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class WaterIntake extends StatelessWidget {
  const WaterIntake({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Water iintake',
          style: AppStyles.body2,
        ),
        SizedBox(height: 16.0.h),
        SizedBox(
          height: 120.0.h,
          width: 311.0.w,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    4,
                    (index) => SvgPicture.asset(
                      AppAssets.cub,
                      width: 40.0.w,
                      height: 40.0.h,
                      color: AppColor.theme,
                    ),
                  ),
                ),
                SizedBox(height: 16.0.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    4,
                    (index) => SvgPicture.asset(
                      AppAssets.cub,
                      width: 40.0.w,
                      height: 40.0.h,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
