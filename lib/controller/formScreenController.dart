import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:plotline_mobile/model/saveDataModel.dart';
import 'package:plotline_mobile/view/buttonScreen.dart';
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

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getFormData();
  }


  void saveFormData(MyFormData formData) async {
    final prefs = await SharedPreferences.getInstance();
    final key = formData.selectedOption;
    final jsonData = jsonEncode(formData.toJson()); // Convert to a JSON string
    await prefs.setString(key, jsonData);
    print("Data saved");
    print(jsonData);
    // Get.to(buttonScreen());
  }

  void getFormData()async{
    final prefs = await SharedPreferences.getInstance();
    final String? items = prefs.getString('Button 1');
    print("Data getting");
    print(items);
  }
}