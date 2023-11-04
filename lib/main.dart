import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/getx_utils/getx_dialogalart.dart';
import 'package:getx_statemanagement/getx_utils/getx_home.dart';

import 'getx_utils/getx_navigators.dart';
import 'getx_utils/getx_screensize.dart';

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
      home: GetXScreenSize(),
      // getPages: [
      //   GetPage(name: '/', page: () => GetxHomeScreen()),
      //   GetPage(name: '/dialogalert', page: () => GetxDialogAlart()),
      //   GetPage(name: '/navigators', page: () => GetXNavigators())
      // ],
    );
  }
}
