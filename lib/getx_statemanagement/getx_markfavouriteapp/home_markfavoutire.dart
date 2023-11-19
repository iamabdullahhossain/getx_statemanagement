import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/getx_statemanagement/getx_imagepicker/imagepicker_home.dart';
import 'package:getx_statemanagement/getx_statemanagement/getx_markfavouriteapp/markfavourite_controller.dart';

class HomeMarkFavouriteScreen extends StatefulWidget {
  const HomeMarkFavouriteScreen({super.key});

  @override
  State<HomeMarkFavouriteScreen> createState() =>
      _HomeMarkFavouriteScreenState();
}

class _HomeMarkFavouriteScreenState extends State<HomeMarkFavouriteScreen> {
  MarkFavouriteController controller = Get.put(MarkFavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mark Favourite"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.5,
            child: Expanded(
              child: ListView.builder(
                  itemCount: controller.itemList.length,
                  itemBuilder: (context, index) {
                    return Obx(() => Card(
                          child: ListTile(
                            onTap: () {
                              if (controller.favoutireList.contains(
                                  controller.itemList[index].toString())) {
                                controller.removeFromFav(
                                    controller.itemList[index].toString());
                              } else {
                                controller.addToFav(
                                    controller.itemList[index].toString());
                              }
                            },
                            title: Text(controller.itemList[index].toString()),
                            trailing: Icon(
                              Icons.favorite,
                              color: controller.favoutireList.contains(
                                      controller.itemList[index].toString())
                                  ? Colors.red
                                  : Colors.white,
                            ),
                          ),
                        ));
                  }),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.sizeOf(context).width*0.7, 60)
                  ),
                    onPressed: () {
                      Get.to(HomeImagePickerScreen());
                    },
                    child: Text("Next Page")),
              ],
            ),
          )


        ],
      ),
    );
  }
}
