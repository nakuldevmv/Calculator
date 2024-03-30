import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final bool isElevated;
  bool get elevated => isElevated;
  const CustomContainer(
      {super.key, required this.child, required this.isElevated});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Durations.short3,
      child: InkWell(
        onTap: () {
          Get.find<CustomContainerController>().changeElevation();
        },
        child: Container(
          margin: const EdgeInsets.only(top: 21, left: 22),
          width: 74,
          height: 74,
          alignment: Alignment.center,
          transformAlignment: Alignment.center,
          child: Container(
            width: 162,
            height: 162,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(150),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF153F5B),
                  Color.fromARGB(255, 26, 77, 112),
                ],
              ),
              boxShadow: elevated
                  ? [
                      const BoxShadow(
                        color: Color.fromARGB(255, 68, 147, 186),
                        offset: Offset(-5.5, -5.5),
                        blurRadius: 20,
                        spreadRadius: 0.0,
                      ),
                      const BoxShadow(
                        color: Color.fromARGB(255, 3, 25, 36),
                        offset: Offset(5.5, 5.5),
                        blurRadius: 20,
                        spreadRadius: 0.0,
                      )
                    ]
                  : null,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}

class CustomContainerController extends GetxController {
  bool _isElevated = true;
  bool get elevated => _isElevated;

  void changeElevation() {
    _isElevated = !_isElevated;
    update();
  }
}
