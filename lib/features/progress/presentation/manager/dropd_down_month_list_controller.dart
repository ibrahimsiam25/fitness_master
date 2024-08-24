import 'package:get/get.dart';

class DropDownMonthListController extends GetxController {
  String currentValue = "January";
  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  void onValueChanged(String? value) {
    currentValue = value!;
    update();
  }
  
}
