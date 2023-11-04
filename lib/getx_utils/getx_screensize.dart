import 'package:flutter/material.dart';

class GetXScreenSize extends StatefulWidget {
  const GetXScreenSize({super.key});

  @override
  State<GetXScreenSize> createState() => _GetXScreenSizeState();
}

class _GetXScreenSizeState extends State<GetXScreenSize> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: Text("GetX Size"),
      ),
      body: Container(
        child: Center(child: Text("HELLO GODILO")),
      ),


    );
  }
}
