import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/getx_statemanagement/getx_colorslider/colorslider_controller.dart';

import 'colorslider_label.dart';

class HomeColorSliderScreen extends StatefulWidget {
  const HomeColorSliderScreen({super.key});

  @override
  State<HomeColorSliderScreen> createState() => _HomeColorSliderScreenState();
}

class _HomeColorSliderScreenState extends State<HomeColorSliderScreen> {
  ControllerColorSlider controllerColorSlider =
      Get.put(ControllerColorSlider());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Color Slider"),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Obx(() => Container(
                        height: 100,
                        width: 100,
                        color: Colors.blue
                            .withOpacity(controllerColorSlider.opacity.value),
                      )),

                  Obx(() => Slider(
                      value: controllerColorSlider.opacity.value,
                      onChanged: (value) {
                        controllerColorSlider.opacity(value);
                      })),

                  Obx(() => Text("${(controllerColorSlider.opacity * 100).round()}")),

                  ElevatedButton(
                      onPressed: () {
                        Get.to(ColorSliderWithLabel());
                      },
                      child: Text("Try Another One"))
                ],
              ),
            ),
          ),
        ));
  }
}
