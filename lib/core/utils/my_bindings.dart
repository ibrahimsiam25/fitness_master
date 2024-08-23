import 'package:get/get.dart';
import '../../features/water_and_calories/presention/manager/water_meal_controller.dart';
import '../../features/on_boarding/presention/manager/number_picker_days_controller.dart';
import 'package:fitness_master/features/on_boarding/presention/manager/planning_goal_controller.dart';
import 'package:fitness_master/features/on_boarding/presention/manager/number_picker_mins_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WaterMealController(), fenix: true);
    Get.lazyPut(() => PlanningGoalController(), fenix: true);
    Get.lazyPut(() => NumberPickerMinsController(), fenix: true);
    Get.lazyPut(() => NumberPickerDaysController(), fenix: true);
  }
}
