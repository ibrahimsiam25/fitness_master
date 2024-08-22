import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/core/widgets/main_button.dart';
import 'package:fitness_master/features/exercises/presentation/views/widgets/details/details_image.dart';
import 'package:fitness_master/features/exercises/presentation/views/widgets/details/details_appbar.dart';
import 'package:fitness_master/features/exercises/presentation/views/widgets/details/details_main_row.dart';


class ExerciseDetailsViewBody extends StatefulWidget {
  const ExerciseDetailsViewBody({super.key});

  @override
  State<ExerciseDetailsViewBody> createState() =>
      _ExerciseDetailsViewBodyState();
}

class _ExerciseDetailsViewBodyState extends State<ExerciseDetailsViewBody> {
  static const maxSeconds = 20 * 60; // 20 minutes in seconds
  int _remainingSeconds = maxSeconds;
  Timer? _timer;
  bool isPlayin = false;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        setState(() {
          isPlayin = true;
          _remainingSeconds--;
        });
      } else {
        isPlayin = false;
        _timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    isPlayin = false;
    _timer?.cancel();
    super.dispose();
  }

  String _formatTime(int seconds) {
    final minutes = seconds ~/ 60;
    final remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 54.0.h),
          const DetailsAppbar(),
          SizedBox(height: 24.0.h),
          const DetailsMainRow(),
          SizedBox(height: 24.0.h),
          Text(
            'Name of article',
            style: AppStyles.body2,
          ),
          SizedBox(height: 24.0.h),
          const DetailsImage(),
          SizedBox(height: 24.0.h),
          Text(
            'Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur.',
            style: AppStyles.body4,
          ),
         const Spacer(flex: 1,), 
          Align(
            child: Text(
              _formatTime(_remainingSeconds),
              style: AppStyles.header1,
            ),
          ),
         const Spacer(flex: 1,),
          MainButton(
            onTap: () {
              setState(() {
                if (isPlayin) {
                  _timer?.cancel();
                  isPlayin = false;
                } else {
                  _startTimer();
                }
              });
            },
            color: AppColor.theme,
            text: isPlayin == false ? 'Start' : 'Stop',
            textColor: AppColor.black,
          ),
            const Spacer(flex: 6,),
        ],
      ),
    );
  }
}
