import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/constants/app_color.dart';
import 'package:fitness_master/core/constants/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_assets.dart';
Map<String, String> progresMap = {
  "April": AppAssets.progress,
  "May": AppAssets.progress,
  "June": AppAssets.progress,
};

class ProgressViewBody extends StatelessWidget {
  const ProgressViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      padding: EdgeInsets.all(20),
      height: 300.h,
      decoration: BoxDecoration(
        color: AppColor.veryDarkGray,
        borderRadius: BorderRadius.circular(14.0.r),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text("Biceps", style: AppStyles.body2,textAlign: TextAlign.start,)),
          SizedBox(height: 16.h),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: progresMap.length,
              itemBuilder: (context, index) {
                // Return the CustomColumnForProgress widget
                return CustomColumnForProgress(
                  imagePath: progresMap.values.elementAt(index),
                  title: progresMap.keys.elementAt(index),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomColumnForProgress extends StatelessWidget {
  const CustomColumnForProgress({
    super.key,
    required this.title,
    required this.imagePath,
  });

  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath),
          SizedBox(height: 16.h),
          Text(title, style: AppStyles.body1),
        ],
      ),
    );
  }
}
