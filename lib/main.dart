import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/service/shared_preferences_singleton.dart';
import 'package:fitness_master/core/utils/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_color.dart';


void main() async {
 
  await ScreenUtil.ensureScreenSize();
   await SharedPref.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        SystemChrome.setSystemUIOverlayStyle(
          const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarColor: Colors.transparent,
          ),
        );
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
          theme: ThemeData(
            fontFamily: 'Roboto',
            scaffoldBackgroundColor: AppColor.background,
          ),
        );
      },
    );
  }
}
