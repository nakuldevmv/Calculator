import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapptest/Controllers/controlers.dart';
import 'package:getxapptest/styles/customContainer.dart';

// ignore: camel_case_types
class calculator extends StatelessWidget {
  const calculator({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(CustomContainer);
    // Get.put(AnimatedController());
    // visualControl vis = Get.put(visualControl());
    TapResult controller = Get.put(TapResult());

    return Scaffold(
      backgroundColor: const Color(0xff333333),
      body: Column(
        children: [
          GetBuilder<TapResult>(
            builder: (getanswer) {
              return mainscreen(
                isValue: controller.isValue,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    // Positioned(
                    //   top: 25,
                    //   left: 25,
                    //   child: InkWell(
                    //       onTap: () {
                    //         controller.screenUp();
                    //       },
                    //       child: const Icon(
                    //         Icons.menu,
                    //         size: 30,
                    //       )),
                    // ),
                    Container(
                      height: 115,
                      width: 375,
                      padding: const EdgeInsets.only(
                          left: 40, right: 40, bottom: 10),
                      // color: const Color.fromARGB(66, 244, 67, 54),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            controller.h.toString(),
                            style: const TextStyle(fontSize: 22),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "=",
                                style: TextStyle(fontSize: 40),
                              ),
                              Text(
                                controller.v.toString(),
                                style: const TextStyle(fontSize: 40),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 28),
            height: 505,
            width: double.maxFinite,
            decoration: const BoxDecoration(
                // color: Color(0xFF153F5B),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 31, 85, 121),
                    Color(0xff153f5b),
                    Color(0xff10344b)
                  ],
                  stops: [0.33, 0.66, 1],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomContainerBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ElevatedButtonStyle.operatorStyle,
                            onPressed: () {
                              controller.clear();
                            },
                            child: const Text(
                              "AC",
                              style: TextStyleClass.style,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButtonStyle.operatorStyle,
                            onPressed: () {
                              controller.backspace();
                            },
                            child: const Text(
                              "C",
                              style: TextStyleClass.style,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButtonStyle.operatorStyle,
                            onPressed: () {
                              int stringLenght = controller.v.length;
                              String checker = controller.v[stringLenght - 1];
                              if (checker.contains("+") ||
                                  checker.contains("-") ||
                                  checker.contains("*") ||
                                  checker.contains("/")) {
                                controller.getValue(controller.v
                                    .substring(0, controller.v.length - 1));
                              }
                            },
                            child: const Text(
                              "A",
                              style: TextStyleClass.style,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 22,
                        ),
                        ElevatedButton(
                          style: ElevatedButtonStyle.btnstyle,
                          onPressed: () {
                            controller.getValue("7");
                            controller.screenUp();
                          },
                          child: const Text(
                            "7",
                            style: TextStyleClass.style,
                          ),
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        ElevatedButton(
                          style: ElevatedButtonStyle.btnstyle,
                          onPressed: () {
                            controller.getValue("8");
                            controller.screenUp();
                          },
                          child: const Text(
                            "8",
                            style: TextStyleClass.style,
                          ),
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        ElevatedButton(
                          style: ElevatedButtonStyle.btnstyle,
                          onPressed: () {
                            controller.getValue("9");
                            controller.screenUp();
                          },
                          child: const Text(
                            "9",
                            style: TextStyleClass.style,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 22,
                        ),
                        ElevatedButton(
                          style: ElevatedButtonStyle.btnstyle,
                          onPressed: () {
                            controller.getValue("4");
                            controller.screenUp();
                          },
                          child: const Text(
                            "4",
                            style: TextStyleClass.style,
                          ),
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        ElevatedButton(
                          style: ElevatedButtonStyle.btnstyle,
                          onPressed: () {
                            controller.getValue("5");
                            controller.screenUp();
                          },
                          child: const Text(
                            "5",
                            style: TextStyleClass.style,
                          ),
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        ElevatedButton(
                          style: ElevatedButtonStyle.btnstyle,
                          onPressed: () {
                            controller.getValue("6");
                            controller.screenUp();
                          },
                          child: const Text(
                            "6",
                            style: TextStyleClass.style,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 22,
                        ),
                        ElevatedButton(
                          style: ElevatedButtonStyle.btnstyle,
                          onPressed: () {
                            controller.getValue("1");
                            controller.screenUp();
                          },
                          child: const Text(
                            "1",
                            style: TextStyleClass.style,
                          ),
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        ElevatedButton(
                          style: ElevatedButtonStyle.btnstyle,
                          onPressed: () {
                            controller.getValue("2");
                            controller.screenUp();
                          },
                          child: const Text(
                            "2",
                            style: TextStyleClass.style,
                          ),
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        ElevatedButton(
                          style: ElevatedButtonStyle.btnstyle,
                          onPressed: () {
                            controller.getValue("3");
                            controller.screenUp();
                          },
                          child: const Text(
                            "3",
                            style: TextStyleClass.style,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 22,
                        ),
                        ElevatedButton(
                          style: ElevatedButtonStyle.btnstyle0,
                          onPressed: () {
                            controller.getValue("0");
                            controller.screenUp();
                          },
                          child: const Text(
                            "0",
                            textAlign: TextAlign.left,
                            style: TextStyleClass.style,
                          ),
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        ElevatedButton(
                          style: ElevatedButtonStyle.btnstyle,
                          onPressed: () {
                            controller.getValue(".");
                            controller.screenUp();
                          },
                          child: const Text(
                            ".",
                            style: TextStyleClass.style,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                CustomContainerBox2(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButtonStyle.operatorStyle,
                        onPressed: () {
                          controller.getValue("/");
                          controller.screenUp();
                        },
                        child: const Text(
                          "÷",
                          style: TextStyleClass.style,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButtonStyle.operatorStyle,
                        onPressed: () {
                          controller.getValue("*");
                          controller.screenUp();
                        },
                        child: const Text(
                          "×",
                          style: TextStyleClass.style,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButtonStyle.operatorStyle,
                        onPressed: () {
                          controller.getValue("-");
                          controller.screenUp();
                        },
                        child: const Text(
                          "-",
                          style: TextStyleClass.style,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButtonStyle.operatorStyle,
                        onPressed: () {
                          controller.getValue("+");
                          controller.screenUp();
                        },
                        child: const Text(
                          "+",
                          style: TextStyleClass.style,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButtonStyle.operatorStyleEquals,
                        onPressed: () {
                          controller.evaluate();
                          controller.screenUp();
                        },
                        child: const Text(
                          "=",
                          style: TextStyleClass.style,
                        ),
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
