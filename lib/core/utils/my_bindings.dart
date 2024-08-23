import 'package:get/get.dart';
import '../../features/water_and_calories/presention/manager/water_meal_controller.dart';
import 'package:fitness_master/features/on_boarding/presention/manager/planning_goal_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WaterMealController(), fenix: true);
    Get.lazyPut(() => PlanningGoalController(), fenix: true);
  }
}
