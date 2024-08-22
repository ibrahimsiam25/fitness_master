import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fitness_master/core/constants/const.dart';
import 'package:fitness_master/core/utils/app_router.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/core/constants/app_assets.dart';
import 'package:fitness_master/features/exercises/presentation/manager/exercises/exercises_cubit.dart';

class ExerciseMainElement extends StatelessWidget {
  const ExerciseMainElement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: ListView.builder(
          padding: const EdgeInsets.all(0.0),
          itemCount: 5,
          itemBuilder: (context, index) {
            return BlocBuilder<ExercisesCubit, int>(
              builder: (context, state) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 12.0.h),
                  child: InkWell(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kExercisesDetails);
                    },
                    borderRadius: BorderRadius.circular(23.0.r),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppColor.veryDarkGray,
                        borderRadius: BorderRadius.all(
                          Radius.circular(23.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                        child: Column(
                          children: [
                            SizedBox(height: 20.0.h),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Name of exercise',
                                      style: AppStyles.body2,
                                    ),
                                    Text(
                                      exercises['title'][state],
                                      style: AppStyles.body1,
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.bookmark_border,
                                    size: 24,
                                    color: AppColor.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16.0.h),
                            Container(
                              width: 303.0.w,
                              height: 185.0.h,
                              decoration: const BoxDecoration(
                                color: AppColor.veryDarkGray,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(23.0),
                                ),
                                image: DecorationImage(
                                  image: AssetImage(
                                    AppAssets.image11,
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(height: 20.0.h),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
