import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:plotline_mobile/view/formScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff0958d9)),
        useMaterial3: true,
      ),
      home: formScreen(),
    );
  }
}