import 'package:flutter/material.dart';
import 'package:test_gi/UI/home_page/view.dart';
import 'package:get/get.dart';
import 'package:test_gi/UI/program_1/view.dart';
import 'package:test_gi/UI/program_2/view.dart';
import 'package:test_gi/UI/program_3/view.dart';
import 'package:test_gi/UI/program_4/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/program1', page: () => Program1()),
        GetPage(name: '/program2', page: () => Program2()),
        GetPage(name: '/program3', page: () => Program3()),
        GetPage(name: '/program4', page: () => Program4()),
      ],
    );
  }
}
