import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class buttonScreenController extends GetxController {
  RxInt i = 1.obs;
  List data = [].obs;

  @override
  void onInit() {
    super.onInit();
    getFormData();
  }

  void getFormData() async {
    List<String> temp = [
      'Button 1',
      'Button 2',
      'Button 3',
      'Button 4',
      'Button 5'
    ];
    final prefs = await SharedPreferences.getInstance();
    print("Data getting");
    temp.every((element) {
      var items = prefs.getStringList(element);
      data.add(items);
      return true;
    });

    print(data);
  }

  void deleteData(int i) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove("Button ${i}");
    Get.snackbar("Deleted", "Button ${i} data deleted successfully!");
  }
}
