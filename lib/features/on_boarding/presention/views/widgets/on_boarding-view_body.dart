import 'package:fitness_master/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:fitness_master/core/constants/app-assets.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children:  [
       
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         SvgPicture.asset(AppAssets.onBording1),
        const Text("Exercise library",style: AppStyles.header1)
        ],
      )
      ],
    );
  }
}