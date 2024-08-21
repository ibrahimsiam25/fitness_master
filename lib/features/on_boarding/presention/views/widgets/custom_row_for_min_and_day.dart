import 'package:flutter/material.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/features/on_boarding/presention/views/widgets/custom_number_picker.dart';

class CustomRowForMinAndDay extends StatelessWidget {
  const CustomRowForMinAndDay({
    super.key,
    required this.text,
    required this.title,
    required this.currentValue,
    required this.maxValue,
    required this.minValue,
  });
  final String text;
  final String title;
  final int currentValue;
  final int maxValue;
  final int minValue;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
        width: 178.w,
        child: Text(
          text,
          style: AppStyles.body1,
          textAlign: TextAlign.start,
        ),
      ),
      SizedBox(
        width: 28.w,
      ),
      CustomNumberPicker(
        currentValue: currentValue,
        maxValue: maxValue,
        minValue: minValue,
      ),
      const Spacer(
        flex: 4,
      ),
      Text(
        title,
        style: AppStyles.body1,
      ),
      const Spacer(
        flex: 1,
      ),
    ]);
  }
}
