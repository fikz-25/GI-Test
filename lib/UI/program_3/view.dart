import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_gi/UI/program_3/controller.dart';
import 'package:get/get.dart';
import 'package:test_gi/widget/default_button.dart';

class Program3 extends StatelessWidget {
  final program3Controller = Get.put(Program3Controller());

  @override
  Widget build(BuildContext context) {
    final program3Controller = Get.put(Program3Controller());
    return SafeArea(
        child: Scaffold(
      body: Obx(() => Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DafaultButton(
                  title: "Check Status",
                  onTab: () => program3Controller.checkStatus()),
              SizedBox(
                height: 20.0,
              ),
              Text(program3Controller.ipk.value.toString()),
              Text(program3Controller.status.value.toString()),
            ],
          ))),
    ));
  }
}
