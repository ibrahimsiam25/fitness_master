import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../../core/constants/const.dart';
import '../../../../../core/utils/app_router.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:fitness_master/core/constants/app_assets.dart';
import '../../../../../core/service/shared_preferences_singleton.dart';




class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: SvgPicture.asset(AppAssets.logo)),
        Text(
          "Fitness Master",
          style: AppStyles.header1,
        ),
      ],
    );
  }

  void excuteNavigation() {
    bool isOnBoardingView = SharedPref.getBool(kIsOnBoardingView);
    Future.delayed(const Duration(seconds: 3), () {
      if (isOnBoardingView) {
        
         Get.offAllNamed(AppRouter.kPlanningView);
      } else {
       Get.offAllNamed(AppRouter.kOnBoardingView);
      }
    });
  }
}
