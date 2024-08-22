import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../../core/constants/app_color.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMealAndWaterItem extends StatelessWidget {
  const CustomMealAndWaterItem({
    super.key,
    required this.text,
    required this.onTap,
    required this.isClicked,
    required this.svgPicture,
  });
  final String text;
  final void Function() onTap;
  final bool isClicked;
  final SvgPicture svgPicture;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width:  150.w,
        height: 100.h,
        padding: EdgeInsets.all(11),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r),
          color: isClicked ? AppColor.theme : AppColor.black,
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
             ColorFiltered(
            colorFilter: ColorFilter.mode(
              isClicked ? AppColor.black : AppColor.theme,
              BlendMode.srcIn,
            ),
            child: svgPicture,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Add a meal",
            style: AppStyles.body1
                .copyWith(color: isClicked ? AppColor.black : AppColor.white),
            textAlign: TextAlign.start,
          )
        ]),
      ),
    );
  }
}
