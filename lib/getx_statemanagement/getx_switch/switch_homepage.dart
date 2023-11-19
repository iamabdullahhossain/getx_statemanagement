import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/getx_statemanagement/getx_markfavouriteapp/home_markfavoutire.dart';
import 'package:getx_statemanagement/getx_statemanagement/getx_switch/switch_controller.dart';

class SwitchHomePage extends StatefulWidget {
  const SwitchHomePage({super.key});

  @override
  State<SwitchHomePage> createState() => _SwitchHomePageState();
}

class _SwitchHomePageState extends State<SwitchHomePage> {
  SwitchController controller = Get.put(SwitchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch Using GETX"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notification"),
                Obx(() => Switch(
                    value: controller.turn.value,
                    onChanged: (value) {
                      controller.setSwitch(value);
                      if(controller.turn.value == true){
                       // Get.snackbar("Notification", "Notification On", snackPosition: SnackPosition.BOTTOM, margin: EdgeInsets.all(10));
                        Fluttertoast.showToast(msg: "Notification On");
                      }
                      else{
                        //Get.snackbar("Notification", "Notification Off", snackPosition: SnackPosition.BOTTOM, margin: EdgeInsets.all(10));
                        Fluttertoast.showToast(msg: "Notification Off");
                      }

                    })),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                 Get.to(HomeMarkFavouriteScreen());
              },
              child: Text("Next"))
        ],
      ),
    );
  }
}
