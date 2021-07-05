import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_gi/UI/home_page/controller.dart';
import 'package:test_gi/widget/default_button.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return SafeArea(
      child: Scaffold(
        body: Container(
            margin: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DafaultButton(
                      title: "Program #1",
                      onTab: () => homeController.goToProgram1(),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    DafaultButton(
                      title: "Program #2",
                      onTab: () => homeController.goToProgram2(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DafaultButton(
                      title: "Program #3",
                      onTab: () => homeController.goToProgram3(),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    DafaultButton(
                      title: "Program #4",
                      onTab: () => homeController.goToProgram4(),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
