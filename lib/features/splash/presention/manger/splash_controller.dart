import 'package:get/get.dart';
import '../../../../core/constants/const.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/service/shared_preferences_singleton.dart';



class SplashController extends GetxController {

  @override
  void onInit() {
    super.onInit();

    _executeNavigation();
  }

  void _executeNavigation() {

    bool isOnBoardingView = SharedPref.getBool(kIsOnBoardingView);
    Future.delayed(const Duration(seconds: 3), () {
      if (isOnBoardingView) {
        
        Get.offNamed(AppRouter.kBottomNavigationBar);
      } else {
        Get.offNamed(AppRouter.kOnBoardingView);
      }
    });
  }
}