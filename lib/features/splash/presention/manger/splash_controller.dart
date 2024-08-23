import 'package:get/get.dart';
import '../../../../core/constants/const.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/service/shared_preferences_singleton.dart';



class SplashController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    print(111111111);
    _executeNavigation();
  }

  void _executeNavigation() {
    print("222222222222");
    bool isOnBoardingView = SharedPref.getBool(kIsOnBoardingView);
    Future.delayed(const Duration(seconds: 3), () {
      if (isOnBoardingView) {
         print("33333333333333333");
        Get.offNamed(AppRouter.kBottomNavigationBar);
      } else {
        Get.offNamed(AppRouter.kOnBoardingView);
      }
    });
  }
}