import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plotline_mobile/controller/splashScreenController.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(splashScreenController());
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/logo.png",height: 100,width: 100,),
          Image.asset("assets/logoName.png",height: 100,width: 200,),
        ],
      ),
    );
  }
}
