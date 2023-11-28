import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/getx_statemanagement/getx_imagepicker/imagepicker_controller.dart';
import 'package:getx_statemanagement/getx_statemanagement/getx_login/login_homescreen.dart';

class HomeImagePickerScreen extends StatefulWidget {
  const HomeImagePickerScreen({super.key});

  @override
  State<HomeImagePickerScreen> createState() => _HomeImagePickerScreenState();
}

class _HomeImagePickerScreenState extends State<HomeImagePickerScreen> {
  ImagePickerContriller contriller = Get.put(ImagePickerContriller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
      ),
      body: Obx(() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: contriller.imagePath.isNotEmpty
                      ? FileImage(File(contriller.imagePath.toString()))
                      : null,
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.black

                  ),
                    onPressed: () {
                      contriller.getImage();
                      if(contriller.imagePath.isNotEmpty){
                        print("HERE : "+contriller.imagePath.toString());
                      }
                    },
                    child: Text("Pick Image")),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.black

                    ),
                    onPressed: () {
                     Get.to(()=> LoginHomeScreen());
                    },
                    child: Text("Next"))
              ],
            ),
      )),
    );
  }
}
