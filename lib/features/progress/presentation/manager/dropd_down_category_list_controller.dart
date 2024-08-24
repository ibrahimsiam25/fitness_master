import 'package:get/get.dart';

class DropdDownCategoryListController extends GetxController {
  String currentValue = 'Biceps';
    final List<String> muscles = [
    'Biceps',
    'Triceps',
    'Chest',
    'Back',
    'Legs',
    'Shoulders',
    'Abs',
  ];
  void onValueChanged(String? value) {
    currentValue = value!;
    update();
  }
}