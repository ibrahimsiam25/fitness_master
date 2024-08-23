import 'package:flutter/material.dart';
import 'widgets/progress_view_body.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_color.dart';

class ProgressView extends StatelessWidget {
  const ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          title: "Progress",
          icon: Icon(
            Icons.add,
            color: AppColor.white,
            size: 24.r,
          ),
          onPressed: () {}),
      body: const ProgressViewBody(),
    );
  }
}
