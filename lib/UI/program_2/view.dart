import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_gi/UI/program_2/controller.dart';
import 'package:test_gi/widget/default_button.dart';

class Program2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final program2Controller = Get.put(Program2Controller());
    return SafeArea(
        child: Scaffold(
      body: Obx(() => Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DafaultButton(
                  title: "Convert",
                  onTab: () => program2Controller.convertTime()),
              SizedBox(
                height: 20.0,
              ),
              Text("jumlah angka : ${program2Controller.numbers}"),
              Text(program2Controller.converter.value.toString()),
            ],
          ))),
    ));
  }
}
