import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxDialogAlart extends StatefulWidget {
  const GetxDialogAlart({super.key});

  @override
  State<GetxDialogAlart> createState() => _GetxDialogAlartState();
}

class _GetxDialogAlartState extends State<GetxDialogAlart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX Dialog Alert"), centerTitle: true),
      body: Container(
        child: Column(
          children: [
            //dialog alert -->
            Card(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              elevation: 2.5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                onTap: () {
                  Get.defaultDialog(
                      title: "This is a dialog alert",
                      titlePadding: EdgeInsets.only(top: 20),
                      content: Column(
                        children: [
                          Text("This is a content"),
                          Text("This is a content2"),
                          Text("This is a content3")
                        ],
                      ),
                      confirm: TextButton(
                          onPressed: () {
                            Get.back();
                            Get.snackbar(
                                "Done", "Operation Completed Successfully",
                                snackPosition: SnackPosition.BOTTOM,
                                margin: EdgeInsets.only(
                                    bottom: 20, left: 20, right: 20));
                          },
                          child: Text("Confirm")),
                      cancel: TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text("Cancel")));
                },
                title: Text("GetX Dialog Alert"),
                subtitle: Text("GetX Dialog Alert With GetX",
                    style: TextStyle(color: Colors.grey)),
              ),
            ),

            //change theme with bottom sheet -->
            Card(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              elevation: 2.5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text("Theme Mode"),
                subtitle: Text(
                  "Change to dark or light mood theme in your app!",
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Card(
                            child: ListTile(
                              leading: Icon(Icons.light_mode),
                              title: Text("Light Mood"),
                              onTap: (){
                                Get.changeTheme(ThemeData.light());
                              },
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            margin:
                                EdgeInsets.only(left: 10, top: 10, right: 10),
                            elevation: 2.5,
                          ),
                          Card(
                            child: ListTile(
                              leading: Icon(Icons.dark_mode),
                              title: Text("Dark Mood"),
                              onTap: (){
                                Get.changeTheme(ThemeData.dark());
                              },
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            margin:
                                EdgeInsets.only(left: 10, top: 10, right: 10),
                            elevation: 2.5,
                          ),
                        ],
                      ),
                    ),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            topLeft: Radius.circular(25))),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
