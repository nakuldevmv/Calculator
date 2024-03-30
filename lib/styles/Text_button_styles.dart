import 'dart:collection';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomcContainer extends GetxController {
  var height = 50;
  var width = 100;
  get h => height.toDouble();
  get w => width.toDouble();
  BoxDecoration get bs => const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.all(
          Radius.circular(100),
        ),
      );
}
