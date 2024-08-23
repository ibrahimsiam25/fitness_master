import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_assets.dart';
<<<<<<< HEAD:lib/features/progress/presentation/views/widgets/progress_view_body.dart
import 'package:fitness_master/features/progress/presentation/views/widgets/progress_category_card.dart';
import 'package:svg_flutter/svg.dart';
=======
import 'package:fitness_master/features/progress/presentation/views/widgets/progrees/progress_category_card.dart';
>>>>>>> e5182bdfc059550b8ef521fb79077ff2f4ba8d15:lib/features/progress/presentation/views/widgets/progrees/progress_view_body.dart

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
    return Column(
      children: [
        SizedBox(
          height: 54.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Row(
            children: [
              Text(
                'Progress',
                style: AppStyles.header1,
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  AppAssets.editIcon,
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
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
    );
  }
}
