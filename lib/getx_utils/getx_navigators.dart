import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/getx_utils/getx_home.dart';

class GetXNavigators extends StatefulWidget {
  const GetXNavigators({super.key});

  @override
  State<GetXNavigators> createState() => _GetXNavigatorsState();
}

class _GetXNavigatorsState extends State<GetXNavigators> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX navigator"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                onPressed: () {
                  Get.to(GetxHomeScreen());
                },
                child: Text("Go to home page -->"),
                style: TextButton.styleFrom(foregroundColor: Colors.black),

              ),
            )
          ],
        ),
      ),
    );
  }
}
