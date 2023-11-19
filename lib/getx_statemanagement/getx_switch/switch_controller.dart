import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwitchController extends GetxController {
  RxBool turn = false.obs;


  setSwitch(bool value) {
    turn.value = value;
  }

  setColor(Colors colors){

  }
}
