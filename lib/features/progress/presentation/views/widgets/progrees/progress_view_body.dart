import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
        padding:  EdgeInsets.symmetric(horizontal:15.w),
        child: Column(
          children: [
                SizedBox(
                height: 10.h,
              ),
            CustomAppBar(title: "Progress", icon:AppAssets.pluse, onPressed: () {
              GoRouter.of(context).push(AppRouter.kNewProgrees);
            },),
            Expanded(
              child: ListView.builder(
               
                itemCount: progressMap.length,
                itemBuilder: (context, index) {
                  final category = progressMap.keys.elementAt(index);
                  final progressData = progressMap[category]!;
                  return ProgressCategoryCard(
                    category: category,
                    progressData: progressData,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    )
    ;
  }
}
