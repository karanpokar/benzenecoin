import 'package:benzenecoin/Dashboard/Controllers/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
          body: Container(
        padding: EdgeInsets.all(30),
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        child: SingleChildScrollView(
            child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                'Current Balance\n 2000',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width - 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () => controller.onSendPressed(),
                        child: Container(
                            width: 130,
                            alignment: Alignment.center,
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              'Send',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            )),
                      ),
                      GestureDetector(
                        onTap: () => controller.onReceivePressed(),
                        child: Container(
                            width: 130,
                            alignment: Alignment.center,
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text('Receive',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18))),
                      ),
                    ],
                  ))
            ],
          ),
        )),
      )),
    );
  }
}
