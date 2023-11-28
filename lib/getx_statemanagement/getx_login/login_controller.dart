import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  RxBool loaded = false.obs;

  void loginApi() async{
    loaded.value = true;

    try{
      final response = await post(Uri.parse("https://reqres.in/api/login"),
      body: {
        'email' : emailController.value.text,
        'password' : passwordController.value.text
      });

      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);

      if(response.statusCode ==200){
        loaded.value = false;
        Get.snackbar("Hello", "Welcome");
      }
      else{
        loaded.value = false;
        Get.snackbar("Failed", "Login Failed");
      }

    }
    catch(e){

      Get.snackbar("Caution", e.toString());
    }


  }

}
