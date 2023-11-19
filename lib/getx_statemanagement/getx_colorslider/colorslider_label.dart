import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/getx_statemanagement/getx_colorslider/colorslider_controller.dart';
import 'package:getx_statemanagement/getx_statemanagement/getx_switch/switch_homepage.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class ColorSliderWithLabel extends StatefulWidget {
  const ColorSliderWithLabel({super.key});

  @override
  State<ColorSliderWithLabel> createState() => _ColorSliderWithLabelState();
}

class _ColorSliderWithLabelState extends State<ColorSliderWithLabel> {
  ControllerColorSlider controller = Get.put(ControllerColorSlider());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scroll With Label"),
      ),
      body: Column(


        children: [
          SizedBox(
            height: 10,
          ),
          Obx(() => Container(
                height: 100,
                width: 100,
                color: Colors.blue.withOpacity(controller.opacity.value),
              )),

          SizedBox(
            height: 10,
          ),
          Obx( () => SfSliderTheme(
              data: SfSliderThemeData(
                tooltipBackgroundColor: Colors.blue
              ),
              child: SfSlider(
                  value: controller.opacity.value,
                  min: 0.0,
                  max: 1.0,
                  interval: 0.2,
                  showTicks: true,
                  showLabels: true,
                  enableTooltip: true,
                  tooltipShape: SfPaddleTooltipShape(),
                  onChanged: (dynamic value) {
                    controller.setOpacity(value);
                  }))),
          ElevatedButton(onPressed: (){
            Get.to(SwitchHomePage());
          }, child: Text("Next Work"))
        ],
      ),
    );
  }
}
