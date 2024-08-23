import 'package:svg_flutter/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/core/constants/app_assets.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:fitness_master/features/home/presentation/views/home_view.dart';
import 'package:fitness_master/features/progress/presentation/views/progress_view.dart';
import 'package:fitness_master/features/settings/presentation/views/settings_view.dart';
import 'package:fitness_master/features/exercises/presentation/views/exercises_view.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/add_meal_view.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/water_and_calories_view.dart';
// ignore_for_file: deprecated_member_use


class BottomNavigationBarController extends StatefulWidget {
  const BottomNavigationBarController({super.key});

  @override
  State<BottomNavigationBarController> createState() =>
      _BottomNavigationBarControllerState();
}

class _BottomNavigationBarControllerState
    extends State<BottomNavigationBarController> {
  late PersistentTabController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  void dispose() {
    _controller = PersistentTabController(initialIndex: 0);
    super.dispose();
  }

  List<Widget> buildScreens() {
    return [
      const HomeView(),
      const ExercisesView(),
      const ProgressView(),
      const WaterAndCaloriesView(),
      const SettingsView(),
     
    ];
  }

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: _selectedIndex == 0
            ? CustomSelectedIcon(
                child: SvgPicture.asset(
                  AppAssets.home,
                  color: AppColor.black,
                ),
              )
            : SvgPicture.asset(AppAssets.home),
      ),
      PersistentBottomNavBarItem(
        icon: _selectedIndex == 1
            ? CustomSelectedIcon(
                child: SvgPicture.asset(
                AppAssets.exercise,
                color: AppColor.black,
              ))
            : SvgPicture.asset(AppAssets.exercise),
      ),
      PersistentBottomNavBarItem(
        icon: _selectedIndex == 2
            ? CustomSelectedIcon(
                child: SvgPicture.asset(
                  AppAssets.elements,
                  color: AppColor.black,
                ),
              )
            : SvgPicture.asset(AppAssets.elements),
      ),
      PersistentBottomNavBarItem(
        icon: _selectedIndex == 3
            ? CustomSelectedIcon(
                child: SvgPicture.asset(
                AppAssets.chart,
                color: AppColor.black,
              ))
            : SvgPicture.asset(AppAssets.chart),
      ),
      PersistentBottomNavBarItem(
        icon: _selectedIndex == 4
            ? CustomSelectedIcon(
                child: SvgPicture.asset(
                  AppAssets.settings,
                  color: AppColor.black,
                ),
              )
            : SvgPicture.asset(AppAssets.settings),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      backgroundColor: AppColor.black,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(100.r),
      ),
      navBarHeight: 56.h,
      confineToSafeArea: false,
      margin: EdgeInsets.symmetric(horizontal: 43.5.w, vertical: 16.h),
      padding: const EdgeInsets.all(5),
      navBarStyle: NavBarStyle.simple,
      context,
      controller: _controller,
      screens: buildScreens(),
      items: navBarsItems(),
      onItemSelected: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}

class CustomSelectedIcon extends StatelessWidget {
  const CustomSelectedIcon({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0.w,
      height: 40.0.h,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppColor.theme,
      ),
      child: child,
    );
  }
}
