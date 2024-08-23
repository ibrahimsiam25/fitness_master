import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'widgets/progress_view_body.dart';
=======
import 'widgets/progrees/progress_view_body.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_color.dart';
>>>>>>> e5182bdfc059550b8ef521fb79077ff2f4ba8d15

class ProgressView extends StatelessWidget {
  const ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProgressViewBody(),
    );
  }
}
