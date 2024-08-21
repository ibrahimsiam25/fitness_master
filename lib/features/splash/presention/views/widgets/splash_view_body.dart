import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../../core/constants/const.dart';
import '../../../../../core/utils/app_router.dart';
<<<<<<< HEAD
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:fitness_master/core/constants/app_assets.dart';
import '../../../../../core/service/shared_preferences_singleton.dart';

=======
import 'package:fitness_master/core/constants/app_styles.dart';
import 'package:fitness_master/core/constants/app_assets.dart';
>>>>>>> b45376dabd36a3547f99b5596ae71b1e03a4ba90

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
        )
      ],
    );
  }
<<<<<<< HEAD
void excuteNavigation(){
    bool isOnBoardingView = SharedPref.getBool(kIsOnBoardingView); 
    Future.delayed(const Duration(seconds: 3), () {
      if(isOnBoardingView){
       
      }
      else{
       context.go(AppRouter.kOnBoardingView);
      }
=======

  void excuteNavigation() {
    // bool isOnBoardingView = SharedPref.getBool(kIsOnBoardingView);
    Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      context.go(AppRouter.kOnBoardingView);
>>>>>>> b45376dabd36a3547f99b5596ae71b1e03a4ba90
    });
  }
}



 