import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxHomeScreen extends StatefulWidget {


  GetxHomeScreen({super.key});

  @override
  State<GetxHomeScreen> createState() => _GetxHomeScreenState();
}

class _GetxHomeScreenState extends State<GetxHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GETX UTILS"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.ads_click, size: 20,),
            Text("Click", style: TextStyle(fontSize: 10),)
          ],
        ),
        onPressed: () {
          snackBar("Hello", "Button has been pressed");
        },
      ),
    );
  }
}

snackBar(String title, String msg) {
  Get.snackbar(title, msg,
      backgroundColor: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.only(bottom: 20, left: 20, right: 20));
}
