import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_statemanagement/getx_colorslider/colorslider_label.dart';
import 'getx_statemanagement/getx_colorslider/home_colorslider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: const HomeColorSliderScreen(),

      // getPages: [
      //   GetPage(name: '/', page: () => GetxHomeScreen()),
      //   GetPage(name: '/dialogalert', page: () => GetxDialogAlart()),
      //   GetPage(name: '/navigators', page: () => GetXNavigators())
      // ],
    );
  }
}
