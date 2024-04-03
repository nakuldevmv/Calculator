import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_transition_mixin.dart';
import 'package:getxapptest/Controllers/controlers.dart';
import 'package:getxapptest/styles/customContainer.dart';
import 'package:getxapptest/styles/neumorphic_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: camel_case_types
class calculator extends StatelessWidget {
  const calculator({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(CustomContainer);
    // Get.put(AnimatedController());
    // visualControl vis = Get.put(visualControl());
    TapResult controller = Get.put(TapResult());
    final ctrlPG = PageController(initialPage: 1);

    return Scaffold(
      backgroundColor: const Color(0xff333333),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GetBuilder<TapResult>(
            builder: (getanswer) {
              return mainscreen(
                isValue: controller.isValue,
                child: Container(
                  height: 115,
                  width: 375,
                  padding:
                      const EdgeInsets.only(left: 40, right: 40, bottom: 10),
                  // color: const Color.fromARGB(66, 244, 67, 54),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        color: Colors.transparent,
                        child: Text(
                          controller.h.toString(),
                          style: const TextStyle(fontSize: 22),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 2000),
                        child: Divider(
                          color: controller.isValue != true
                              ? const Color(0xff333333)
                              : const Color.fromARGB(126, 255, 255, 255),
                          height: controller.isValue != true ? 0 : 5,
                          thickness: 0.5,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.showAns();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "=",
                              style: TextStyle(fontSize: 40),
                            ),
                            SizedBox(
                              width: 273,
                              child: Text(
                                textAlign: TextAlign.right,
                                overflow: controller.AnsTF
                                    ? TextOverflow.visible
                                    : TextOverflow.ellipsis,
                                controller.v.toString(),
                                style: const TextStyle(fontSize: 40),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 25),
            height: 508.4,
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
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                PageView(
                  controller: ctrlPG,
                  children: [
                    Container(
                      color: Colors.transparent,
                      width: double.maxFinite,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(
                            height: 14,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: ElevatedButtonStyle.scientificBtn,
                                onPressed: () {
                                  controller.getValue("(");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "(",
                                  style: TextStyleClass.style,
                                ),
                              ),
                              const SizedBox(
                                width: 0,
                              ),
                              ElevatedButton(
                                style: ElevatedButtonStyle.scientificBtn,
                                onPressed: () {
                                  controller.getValue(")");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  ")",
                                  style: TextStyleClass.style,
                                ),
                              ),
                              const SizedBox(
                                width: 0,
                              ),
                              ElevatedButton(
                                style: ElevatedButtonStyle.scientificBtn,
                                onPressed: () {
                                  controller.getValue("^");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "^",
                                  style: TextStyleClass.style,
                                ),
                              ),
                              const SizedBox(
                                width: 0,
                              ),
                              ElevatedButton(
                                style: ElevatedButtonStyle.scientificBtn,
                                onPressed: () {
                                  controller.getValue("abs");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "|x|",
                                  style: TextStyleClass.style,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: ElevatedButtonStyle.scientificBtn,
                                onPressed: () {
                                  controller.getValue("^2");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "x²",
                                  style: TextStyleClass.style,
                                ),
                              ),
                              const SizedBox(
                                width: 0,
                              ),
                              ElevatedButton(
                                style: ElevatedButtonStyle.scientificBtn,
                                onPressed: () {
                                  controller.getValue("^3");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "x³",
                                  style: TextStyleClass.style,
                                ),
                              ),
                              const SizedBox(
                                width: 0,
                              ),
                              ElevatedButton(
                                style: ElevatedButtonStyle.scientificBtn,
                                onPressed: () {
                                  controller.getValue("sqrt(");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "²√",
                                  style: TextStyleClass.style,
                                ),
                              ),
                              const SizedBox(
                                width: 0,
                              ),
                              ElevatedButton(
                                style: ElevatedButtonStyle.scientificBtn,
                                onPressed: () {
                                  controller.getValue("^(1/3)");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "³√",
                                  style: TextStyleClass.style,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: ElevatedButtonStyle.scientificBtn,
                                onPressed: () {
                                  controller.getValue("sin(");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "sin",
                                  style: TextStyleClass.style,
                                ),
                              ),
                              const SizedBox(
                                width: 0,
                              ),
                              ElevatedButton(
                                style: ElevatedButtonStyle.scientificBtn,
                                onPressed: () {
                                  controller.getValue("cos(");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "cos",
                                  style: TextStyleClass.style,
                                ),
                              ),
                              const SizedBox(
                                width: 0,
                              ),
                              ElevatedButton(
                                style: ElevatedButtonStyle.scientificBtn,
                                onPressed: () {
                                  controller.getValue("tan(");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "tan",
                                  style: TextStyleClass.style,
                                ),
                              ),
                              const SizedBox(
                                width: 0,
                              ),
                              ElevatedButton(
                                style: ElevatedButtonStyle.scientificBtn,
                                onPressed: () {
                                  controller.getValue("sinh(");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "sinh",
                                  style: TextStyleClass.style,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: ElevatedButtonStyle.scientificBtn,
                                onPressed: () {
                                  controller.getValue("cosh(");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "cosh",
                                  style: TextStyleClass.style,
                                ),
                              ),
                              const SizedBox(
                                width: 0,
                              ),
                              ElevatedButton(
                                style: ElevatedButtonStyle.scientificBtn,
                                onPressed: () {
                                  controller.getValue("tanh(");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "tanh",
                                  style: TextStyleClass.style,
                                ),
                              ),
                              const SizedBox(
                                width: 0,
                              ),
                              ElevatedButton(
                                style: ElevatedButtonStyle.scientificBtn,
                                onPressed: () {
                                  controller.getValue("e^");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "eˣ",
                                  style: TextStyleClass.style,
                                ),
                              ),
                              const SizedBox(
                                width: 0,
                              ),
                              ElevatedButton(
                                style: ElevatedButtonStyle.scientificBtn,
                                onPressed: () {
                                  controller.getValue("e");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "e",
                                  style: TextStyleClass.style,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: ElevatedButtonStyle.scientificBtn,
                                onPressed: () {
                                  controller.getValue("log10e");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "log10e",
                                  style: TextStyleClass.style,
                                ),
                              ),
                              const SizedBox(
                                width: 0,
                              ),
                              ElevatedButton(
                                style: ElevatedButtonStyle.scientificBtn,
                                onPressed: () {
                                  controller.getValue("log2e");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "log2e",
                                  style: TextStyleClass.style,
                                ),
                              ),
                              const SizedBox(
                                width: 0,
                              ),
                              ElevatedButton(
                                style: ElevatedButtonStyle.scientificBtn,
                                onPressed: () {
                                  controller.getValue("log(");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "log",
                                  style: TextStyleClass.style,
                                ),
                              ),
                              const SizedBox(
                                width: 0,
                              ),
                              ElevatedButton(
                                style: ElevatedButtonStyle.scientificBtn,
                                onPressed: () {
                                  controller.getValue("pi");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "π",
                                  style: TextStyleClass.style,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 21,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // color: const Color.fromARGB(67, 255, 193, 7),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomContainerBox(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                        // int stringLenght = controller.v.length;
                                        // String checker = controller.v[stringLenght - 1];
                                        // if (checker.contains("+") ||
                                        //     checker.contains("-") ||
                                        //     checker.contains("*") ||
                                        //     checker.contains("/")) {
                                        //   controller.getValue(controller.v
                                        //       .substring(0, controller.v.length - 1));
                                        // }
                                        // these code if for ANS button but i cahngd this to % because its more usefull and user friendly
                                        controller.getValue("%");
                                        controller.screenUp();
                                      },
                                      child: const Text(
                                        "%",
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
                                      "0            ",
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
                              const SizedBox(
                                height: 21,
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
                                  style:
                                      ElevatedButtonStyle.operatorStyleEquals,
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
                          ),
                          // const SizedBox(
                          //   height: 10,
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 490,
                  child: SmoothPageIndicator(
                    controller: ctrlPG,
                    count: 2,
                    effect: const ExpandingDotsEffect(
                      dotColor: Color.fromARGB(123, 1, 5, 7),
                      dotHeight: 10,
                      dotWidth: 20,
                      activeDotColor: Color.fromARGB(64, 255, 255, 255),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
