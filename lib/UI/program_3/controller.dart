import 'package:get/get.dart';

class Program3Controller extends GetxController {
  var status = ''.obs;
  var nilai = ['A', 'B', 'B', 'E', 'C', 'B', 'B'];
  var ipk = 0.0.obs;
  var sks = [2, 3, 3, 2, 2, 2, 3];

  void checkStatus() {
    ipk.value = (sks.reduce((a, b) => a + b)) / sks.length;
    print(ipk.toString());
    for (int i = 1; i <= nilai.length; i++) {
      if (nilai[i] == 'E' || ipk < 2) {
        print("Pending");
        status.value = 'Pending';
      } else if (ipk >= 3.5) {
        print("Cum Laude");
        status.value = 'Cum Laude';
      } else if (ipk >= 2.75 || ipk < 3.5) {
        print("Sangat Memuaskan");
        status.value = 'Sangat Memuaskan';
      } else {
        print("Memuaskan");
        status.value = 'Memuaskan';
      }
    }
  }
}
