import 'package:get/get.dart';

class Program2Controller extends GetxController {
  var numbers = 10000;
  var converter = ''.obs;

  void convertTime() {
    var number = numbers;
    number = number % (24 * 3600);
    var hour = number / 3600;

    number %= 3600;
    var minutes = number / 60;

    number %= 60;
    var seconds = number;

    print("${hour.toInt()}; ${minutes.toInt()}; ${seconds.toInt()}");

    converter.value =
        "${hour.toInt()} Jam, ${minutes.toInt()} Menit, ${seconds.toInt()} Detik";
  }
}
