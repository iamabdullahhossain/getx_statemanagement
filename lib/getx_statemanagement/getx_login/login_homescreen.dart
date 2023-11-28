import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/getx_statemanagement/getx_login/login_controller.dart';

class LoginHomeScreen extends StatefulWidget {
  const LoginHomeScreen({super.key});

  @override
  State<LoginHomeScreen> createState() => _LoginHomeScreenState();
}

class _LoginHomeScreenState extends State<LoginHomeScreen> {
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Panel"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: controller.emailController.value,
              decoration: InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: controller.passwordController.value,
              decoration: const InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
          ),

          Obx(() =>   Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                controller.loginApi();
              },
              child: controller.loaded.value? const CircularProgressIndicator(color: Colors.black,) :  Container(
                height: 50,
                color: Colors.blue,
                child: Center(
                    child: Text(
                      "Login".toUpperCase(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          ))


        ],
      ),
    );
  }
}
