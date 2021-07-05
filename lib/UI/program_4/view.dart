import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_gi/UI/program_4/controller.dart';
import 'package:test_gi/widget/default_button.dart';

class Program4 extends StatelessWidget {
  const Program4();

  @override
  Widget build(BuildContext context) {
    final program4Controller = Get.put(Program4Controller());

    return SafeArea(
        child: Scaffold(
            body: Container(
                margin: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DafaultButton(
                        title: "Get Char",
                        onTab: () => program4Controller.convert()),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ))));
  }
}
