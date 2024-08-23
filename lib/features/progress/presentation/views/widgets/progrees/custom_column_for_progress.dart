import 'package:flutter/material.dart';
import '../../../../../../core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          width: 109.w,
          height: 185.0.h,
          imagePath,
          fit: BoxFit.fill,
        ),
        SizedBox(height: 16.h),
        Text(title, style: AppStyles.body1),
      ],
    );
  }
}
