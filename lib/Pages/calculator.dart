import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:getxapptest/Controllers/controlers.dart';
import 'package:getxapptest/styles/customContainer.dart';
import 'package:getxapptest/styles/neumorphic_button.dart';

// ignore: camel_case_types
class calculator extends StatelessWidget {
  const calculator({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CustomContainer);
    Get.put(AnimatedController());

    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 46, left: 18, right: 18),
            height: 296,
            width: 394,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color(0xFF194664),
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                const Positioned(
                  top: 25,
                  left: 25,
                  child: InkWell(
                      // onTap: () {
                      //TODO
                      // },
                      child: Icon(
                    Icons.menu,
                    size: 30,
                  )),
                ),
                Container(
                  height: 115,
                  width: 375,
                  padding:
                      const EdgeInsets.only(left: 40, right: 40, bottom: 10),
                  // color: const Color.fromARGB(66, 244, 67, 54),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "20+30-6",
                        style: TextStyle(fontSize: 22),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "=",
                            style: TextStyle(fontSize: 40),
                          ),
                          Text(
                            "44",
                            style: TextStyle(fontSize: 40),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 28),
            height: 500,
            width: double.maxFinite,
            decoration: const BoxDecoration(
                color: Color(0xFF153F5B),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CustomContainerBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("data"),
                          Text("data"),
                          Text("data"),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // controller.getValue("8");
                          },
                          child: const CustomContainer(
                            child: Center(
                              child: Text(
                                "8",
                                style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ),
                        CustomAnimatedContainer(
                          child: const Text(
                            "data",
                            style: TextStyleClass.style,
                          ),
                        ),

                        // InkWell(
                        //   onTap: () {
                        //     // controller.getValue("9");
                        //   },
                        //   child: CustomContainer(
                        //     h: 7,
                        //     w: 7,
                        //     child: const Center(
                        //       child: Text(
                        //         "9",
                        //         style: TextStyle(
                        //             fontSize: 32,
                        //             fontWeight: FontWeight.normal),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
                CustomContainerBox2(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 88,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(0, 0, 0, 0)),
                        child: const Center(
                          child: Text(
                            "÷",
                            style: TextStyleClass.style,
                          ),
                        ),
                      ),
                      Container(
                        height: 88,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(0, 0, 0, 0)),
                        child: const Center(
                            child: Text(
                          "×",
                          style: TextStyleClass.style,
                        )),
                      ),
                      Container(
                        height: 88,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(0, 0, 0, 0)),
                        child: const Center(
                            child: Text(
                          "-",
                          style: TextStyleClass.style,
                        )),
                      ),
                      Container(
                        height: 88,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(0, 0, 0, 0)),
                        child: const Center(
                            child: Text(
                          "+",
                          style: TextStyleClass.style,
                        )),
                      ),
                      Container(
                        height: 88,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(104, 1, 5, 7)),
                        child: const Center(
                            child: Text(
                          "=",
                          style: TextStyleClass.style,
                        )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
