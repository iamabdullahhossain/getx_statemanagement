import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxHomeScreen extends StatefulWidget {
  const GetxHomeScreen({super.key});

  @override
  State<GetxHomeScreen> createState() => _GetxHomeScreenState();
}

class _GetxHomeScreenState extends State<GetxHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GETX UTILSS"),
      ),
      body: Container(
        child: Column(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          snackBar("Hello", "Button has been pressed");
           },
      ),
    );


  }
}

snackBar(String title, String msg){
  Get.snackbar(title, msg,
      backgroundColor: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.only(bottom: 20, left: 20, right: 20));

}
