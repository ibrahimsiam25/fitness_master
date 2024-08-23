import 'package:flutter/material.dart';
import '../../../../../../core/constants/const.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/constants/app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/features/progress/presentation/views/widgets/progrees/custom_column_for_progress.dart';




class ProgressCategoryCard extends StatelessWidget {
  const ProgressCategoryCard({
    super.key,
    required this.category,
    required this.progressData,
  });

  final String category;
  final Map<String, String> progressData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( vertical: 10.h),
      padding: const EdgeInsets.all(20),
      height: 300.h,
      decoration: BoxDecoration(
        color: AppColor.veryDarkGray,
        borderRadius: BorderRadius.circular(14.0.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(category, style: AppStyles.body2),
          SizedBox(height: 16.h),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: progressData.length,
              itemBuilder: (context, index) {
                final month = progressData.keys.elementAt(index);
                final imagePath = progressData.values.elementAt(index);
                return CustomColumnForProgress(
                  title: month,
                  imagePath: imagePath,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
