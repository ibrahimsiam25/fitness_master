import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:fitness_master/core/constants/app_styles.dart';
import 'package:fitness_master/core/constants/app-assets.dart';

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
        const Text(
          "Fitness Master",
          style: AppStyles.header1,
        )
      ],
    );
  }

  void excuteNavigation() {}
}
