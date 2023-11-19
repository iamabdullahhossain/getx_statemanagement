import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/getx_statemanagement/getx_counterapp/counter_controller.dart';

class HomeScreenActivity extends StatefulWidget {
  const HomeScreenActivity({super.key});

  @override
  State<HomeScreenActivity> createState() => _HomeScreenActivityState();
}

class _HomeScreenActivityState extends State<HomeScreenActivity> {
  final CounterController controller = Get.put(CounterController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Counter App",
          style: TextStyle(letterSpacing: 2),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(() {
          return Text(controller.counter.toString());
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.onIncreament();
        },
      ),

    );
  }
}

