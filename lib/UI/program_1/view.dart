import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_gi/UI/program_1/controller.dart';
import 'package:test_gi/widget/default_button.dart';

class Program1 extends StatelessWidget {
  const Program1();

  @override
  Widget build(BuildContext context) {
    final program1Controller = Get.put(Program1Controller());
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DafaultButton(
                    title: "Get Number",
                    onTab: () => program1Controller.thisNumber()),
                SizedBox(
                  height: 20.0,
                ),
                Obx(() => program1Controller.datas.isNotEmpty
                    ? Container(
                        height: MediaQuery.of(context).size.height / 0.5,
                        child: ListView.builder(
                            primary: false,
                            shrinkWrap: true,
                            itemCount: program1Controller.datas.length,
                            itemBuilder: (context, index) =>
                                Text(program1Controller.datas[index])))
                    : SizedBox())
              ],
            )),
      )),
    );
  }
}
