import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';
import 'package:fitness_master/core/constants/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/custom_drob_contianer.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        children: [
          SizedBox(
            height: 24.h,
          ),
          CustomDrobContainer(),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.r),
                color: AppColor.black),
                child: Row(
                  children: [
                    Text("Today's time counter",style: AppStyles.body2,),
                    
                  ],
                ),
          )
        ],
      ),
    );
  }
}
