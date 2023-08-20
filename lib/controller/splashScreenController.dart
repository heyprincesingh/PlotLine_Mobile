import 'package:get/get.dart';
import 'package:plotline_mobile/view/formScreen.dart';

class splashScreenController extends GetxController{
  @override
  void onInit() {
    Future.delayed(Duration(seconds: 3),()async{
      await Get.offAll(formScreen());
    });
    super.onInit();
  }
}