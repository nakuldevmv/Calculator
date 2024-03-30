import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getxapptest/styles/customContainer.dart';

// ignore: camel_case_types
class calculator extends StatelessWidget {
  const calculator({super.key});

  @override
  Widget build(BuildContext context) {
    //container height

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
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            // controller.getValue("7");
                          },
                          child: CustomContainer(
                            h: 75,
                            w: 75,
                            child: const Center(
                              child: Text(
                                "7",
                                style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // controller.getValue("8");
                          },
                          child: CustomContainer(
                            h: 75,
                            w: 75,
                            child: const Center(
                              child: Text(
                                "8",
                                style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // controller.getValue("9");
                          },
                          child: CustomContainer(
                            h: 7,
                            w: 7,
                            child: const Center(
                              child: Text(
                                "9",
                                style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
