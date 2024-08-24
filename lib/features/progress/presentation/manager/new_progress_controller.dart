import 'package:get/get.dart';

class   NewProgressController extends GetxController{

}




// class SaveDataController extends GetxController{
//  @override
//     void onInit() {
//     super.onInit();
//     String? imagePath = SharedPref.getString("image");
//     if (imagePath != null && imagePath.isNotEmpty) {
//       print(111);
//       image = File(imagePath);
//     } else {
//       print(222222222222);
//       image = null;
//     }
//   }

//     saveImage() {
//    if(image != null) {  
//     SharedPref.setString("image", image!.path);
//   }
//    final  categoryController = Get.find<DropdDownCategoryListController>();
//    final  monthController = Get.find<DropDownMonthListController>();
//    print(categoryController.currentValue);
//    print(monthController.currentValue);
// }
// }