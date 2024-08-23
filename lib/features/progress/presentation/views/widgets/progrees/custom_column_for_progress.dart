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
