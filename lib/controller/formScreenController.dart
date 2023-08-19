import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class formScreenController extends GetxController{
  final Rx<ValueNotifier<String>> selectedOption = ValueNotifier('Button 1').obs;
  Rx<TextEditingController> tooltipTextController = TextEditingController().obs;
  Rx<TextEditingController> textSizeController = TextEditingController().obs;
  Rx<TextEditingController> paddingController = TextEditingController().obs;
  Rx<TextEditingController> textColorController = TextEditingController().obs;
  Rx<TextEditingController> backgroundColorController = TextEditingController().obs;
  Rx<TextEditingController> cornerRadiusController = TextEditingController().obs;
  Rx<TextEditingController> tooltipWidthController = TextEditingController().obs;
  Rx<TextEditingController> arrowWidthController = TextEditingController().obs;
  Rx<TextEditingController> arrowHeightController = TextEditingController().obs;

  void saveFormData(List<String> formData, String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(key, formData);
    Get.snackbar("Congrats!","Data Saved Successfully",backgroundColor: Colors.white,colorText: Colors.black,snackPosition: SnackPosition.BOTTOM);
  }
}