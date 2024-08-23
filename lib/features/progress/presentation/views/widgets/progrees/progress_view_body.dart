import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_assets.dart';
import 'package:fitness_master/core/widgets/custom_app_bar.dart';
import 'package:fitness_master/features/progress/presentation/views/widgets/progrees/progress_category_card.dart';


final Map<String, Map<String, String>> progressMap = {
  "Biceps": {
    "April": AppAssets.progress,
    "May": AppAssets.progress,
    "June": AppAssets.progress,
    "August": AppAssets.progress,
  },
  "Abdomen": {
    "April": AppAssets.progress,
    "May": AppAssets.progress,
    "June": AppAssets.progress,
    "August": AppAssets.progress,
  },
};

class ProgressViewBody extends StatelessWidget {
  const ProgressViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ListView(
          children: [
            CustomAppBar(
              title: "Progress",
              icon: AppAssets.pluse,
              onPressed: () {
                 Get.toNamed(AppRouter.kNewProgrees);
              
              },
            ),
            ...List.generate(
              progressMap.length,
              (index) {
                final category = progressMap.keys.elementAt(index);
                final progressData = progressMap[category]!;
                return Padding(
                  padding: index == 1
                      ? EdgeInsets.only(bottom: 88.0.h)
                      : EdgeInsets.zero,
                  child: ProgressCategoryCard(
                    category: category,
                    progressData: progressData,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
