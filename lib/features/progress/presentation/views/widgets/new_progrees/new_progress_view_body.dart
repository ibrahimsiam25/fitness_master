import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../../../core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/core/constants/app_assets.dart';
import 'package:fitness_master/features/progress/presentation/views/widgets/new_progrees/custom_dropd_down_list.dart';

final List<String> muscles = [
  'Biceps',
  'Triceps',
  'Chest',
  'Back',
  'Legs',
  'Shoulders',
  'Abs',
];

final List<String> months = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December',
];

class NewProgreesViewBody extends StatelessWidget {
  const NewProgreesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: Icon(
                    size: 30.0.r,
                    Icons.arrow_back_ios,
                    color: AppColor.white,
                  )),
              SizedBox(
                width: 16.0.w,
              ),
              Text(
                "New Progress",
                style: AppStyles.header1,
              ),
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 140.w,
              height: 230.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0.r),
                color: AppColor.veryDarkGray,
              ),
              child: Center(
                child: SvgPicture.asset(
                  AppAssets.addImage,
                  fit: BoxFit.contain,
                  width: 45,
                  height: 45,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Category",
                style: AppStyles.body1,
              )),
          SizedBox(
            height: 12.h,
          ),
          CustomDropdownList(
            list: muscles,
          ),
          SizedBox(
            height: 24.h,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Month",
                style: AppStyles.body1,
              )),
          SizedBox(
            height: 12.h,
          ),
          CustomDropdownList(
            list: months,
          )
        ],
      ),
    ));
  }
}
