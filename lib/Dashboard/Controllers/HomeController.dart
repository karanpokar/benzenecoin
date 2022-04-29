import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var index = 10;
  var color = Color(0xffff3322);
  onChangeIndex() {
    color = Color(0xff1122);
    update();
  }

  onSendPressed() async {
    print('sendPressed');
  }

  onReceivePressed() async {
    print('receivedPressed');
  }

  @override
  void onInit() {
    print('Init function Called');
    // TODO: implement onInit
    super.onInit();
  }
}
