import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fitness_master/core/constants/const.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/features/on_boarding/presention/manger/planning/planning_cubit.dart';

List<String> planningList = [
  "lose weight",
  "build muscle",
  "Lead a healthy lifestyle"
];
int no = 0;

class PlanningViewBody extends StatefulWidget {
  const PlanningViewBody({super.key});

  @override
  State<PlanningViewBody> createState() => _PlanningViewBodyState();
}

class _PlanningViewBodyState extends State<PlanningViewBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Planning",
                style: AppStyles.header1,
              ),
            ),
            SizedBox(height: 16.h),
            Text(
              "My goal is to:",
              style: AppStyles.body1,
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 12.h,
            ),
            BlocBuilder<PlanningCubit, PlanningState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(3, (index) {
                    return PlanningGoalItem(
                        text: planningList[index],
                        onTap: () {
                          setState(() {
                            no = index;
                            print(no);
                          });
                        },
                        isClicked: no == index);
                  }),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class PlanningGoalItem extends StatelessWidget {
  const PlanningGoalItem({
    super.key,
    required this.text,
    required this.onTap,
    required this.isClicked,
  });
  final String text;
  final void Function() onTap;
  final bool isClicked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.r),
            color: isClicked ? AppColor.theme : AppColor.black,
          ),
          width: 100.w,
          height: 124.h,
          child: Center(
              child: Text(
            text,
            textAlign: TextAlign.center,
            style: AppStyles.body1
                .copyWith(color: isClicked ? AppColor.black : AppColor.white),
          )),
        ));
  }
}


