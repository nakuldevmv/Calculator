import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapptest/Controllers/controlers.dart';

class CustomAnimatedContainer extends StatelessWidget {
  final AnimatedController controller = Get.find<AnimatedController>();
  final child;

  CustomAnimatedContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
          onTap: () => controller.toggleElevation(),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(60),
              boxShadow: controller.isElevated.value
                  ? [
                      BoxShadow(
                        color: Colors.grey[500]!,
                        offset: const Offset(4, 4),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                      const BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4, -4),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                    ]
                  : null,
            ),
            child: child,
          ),
        ));
  }
}
