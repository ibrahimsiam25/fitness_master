import 'package:get/get.dart';
import '../../features/water_and_calories/presention/manager/water_meal_controller.dart';

class bindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WaterMealController(), fenix: true);
  }
}
