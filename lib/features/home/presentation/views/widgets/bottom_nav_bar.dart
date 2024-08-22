import 'package:fitness_master/core/constants/app_assets.dart';
import 'package:fitness_master/features/exercises/presentation/views/exercises_view.dart';
import 'package:fitness_master/features/home/presentation/views/home_view.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/custom_nav_bar_selected_icon.dart';
import 'package:fitness_master/features/settings/presentation/views/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:svg_flutter/svg.dart';

class BottomNavBarController extends StatefulWidget {
  const BottomNavBarController({super.key});

  @override
  State<BottomNavBarController> createState() => _BottomNavBarControllerState();
}

class _BottomNavBarControllerState extends State<BottomNavBarController> {
  late PersistentTabController _controller;
  int selectedIndex = 0;
  int? extra;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    extra = GoRouterState.of(context).extra as int?;

    if (extra != null) {
      _controller = PersistentTabController(initialIndex: extra!);
      selectedIndex = extra!;
    }
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  List<Widget> buildScreens() {
    return [
      const HomeView(),
      const ExercisesView(),
      const Center(child: Text('3.Progress')),
      const Center(child: Text('4.Water & Calories Intake')),
      const SettingsView(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: selectedIndex == 0
            ? CustomBottomNavBarSelectedIcon(
                child: SvgPicture.asset(AppAssets.home))
            : SvgPicture.asset(AppAssets.home),
      ),
      PersistentBottomNavBarItem(
        icon: selectedIndex == 1
            ? CustomBottomNavBarSelectedIcon(
                child: SvgPicture.asset(AppAssets.exercise))
            : SvgPicture.asset(AppAssets.exercise),
      ),
      PersistentBottomNavBarItem(
        icon: selectedIndex == 2
            ? CustomBottomNavBarSelectedIcon(
                child: SvgPicture.asset(AppAssets.elements))
            : SvgPicture.asset(AppAssets.elements),
      ),
      PersistentBottomNavBarItem(
        icon: selectedIndex == 3
            ? CustomBottomNavBarSelectedIcon(
                child: SvgPicture.asset(AppAssets.chart))
            : SvgPicture.asset(AppAssets.chart),
      ),
      PersistentBottomNavBarItem(
        icon: selectedIndex == 4
            ? CustomBottomNavBarSelectedIcon(
                child: SvgPicture.asset(AppAssets.settings))
            : SvgPicture.asset(AppAssets.settings),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      stateManagement: true,
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff282828),
      navBarHeight: 66.h,
      confineToSafeArea: false,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
      navBarStyle: NavBarStyle.simple,
      context,
      controller: _controller,
      screens: buildScreens(),
      items: navBarsItems(),
      onItemSelected: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }
}
