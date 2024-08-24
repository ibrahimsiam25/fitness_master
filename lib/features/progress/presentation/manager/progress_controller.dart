import 'dart:convert';
import 'package:get/get.dart';
import '../../../../core/service/shared_preferences_singleton.dart';

class ProgressController extends GetxController {
  Map<String, Map<String, String>> progressMap = {};

  @override
  void onInit() {
    super.onInit();

    fetchData();
  }
 

  void fetchData() {
    // Retrieve the progress map JSON from SharedPreferences
    final String? progressMapJson = SharedPref.getString('progressMap');

    // Decode the JSON string if it's not empty and populate the progressMap
    if (progressMapJson?.isNotEmpty ?? false) {
      try {
        final decodedMap = jsonDecode(progressMapJson!);
        if (decodedMap is Map) {
          progressMap = decodedMap.map(
            (key, value) => MapEntry(key, Map<String, String>.from(value)),
          );
        }
      } catch (e) {
        print("Error decoding progressMapJson: $e");
      }
    }
  }
}
