import 'package:get/get.dart';

class Program4Controller extends GetxController {
  var chasrs = [].obs;

  void convert() {
    int c = "A".codeUnitAt(0);
    int end = "Z".codeUnitAt(0);
    while (c <= end) {
      for (int i = 0; i < 10; i++) {
        print(String.fromCharCode(c));
      }

      for (int z = 0; z < 1000; z++) {
        if (z < 10) {
          print('00');
        } else if (z < 100) {
          print('0');
        }

        print(z);
      }

      c++;
    }
  }
}
