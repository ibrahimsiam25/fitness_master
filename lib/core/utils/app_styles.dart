import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_color.dart';

abstract class AppStyles {
  static  TextStyle header1 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 32.sp,
    color: AppColor.white
  );
  static const TextStyle body1 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: AppColor.white,
  );
}
