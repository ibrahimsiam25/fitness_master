import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import 'package:fitness_master/core/constants/app_assets.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cusyomAppBar(
        title: "Home",
        icon: SvgPicture.asset(AppAssets.editIcon),
        onPressed: () {},
      ),
      body: const HomeViewBody(),
    );
  }
}
