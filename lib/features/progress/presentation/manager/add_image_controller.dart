import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


class AddImageController extends GetxController {
  File? image; 
  final ImagePicker _imagePicker = ImagePicker();



  Future<void> uploadImage() async {
    final pickedImage = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      image = File(pickedImage.path);
      update(); 
    }
  }



}