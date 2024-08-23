import 'package:get/get.dart';

class ExercisesController extends GetxController {
  int currentIndex = 0;
  void changeIndex(int index) {
    currentIndex = index;
    update();
  }
}
