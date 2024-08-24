import 'package:get/get.dart';
  void customSnackbar({
    required String title,
    required String message,
   
  }) {
    Get.snackbar(
      title, 
      message,
      duration:const Duration(seconds: 2),
    );
  }