import 'package:get/get.dart';

class Program1Controller extends GetxController {
  var datas = [].obs;

  void thisNumber() {
    int ct = 1;
    int a = 5;
    int b = 3;
    int c = 0;

    for (int i = 1; i <= 1000; i++) {
      print("${i}");
      datas.add(i.toString());

      if (ct == a) {
        c = a;
        a = b;
        b = c;

        print("#");
        datas.add("#");
        ct = 0;
      }

      ct += 1;
    }
  }
}
