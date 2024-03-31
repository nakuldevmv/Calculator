import 'package:get/get.dart';

class AnimatedController extends GetxController {
  var isElevated = true.obs;

  void toggleElevation() {
    isElevated.value = !isElevated.value;
  }
}
