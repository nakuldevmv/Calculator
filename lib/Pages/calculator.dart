import 'package:flutter/material.dart';

// ignore: camel_case_types
class calculator extends StatelessWidget {
  const calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 46, left: 18, right: 18),
            height: 296,
            width: 394,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color.fromARGB(255, 98, 136, 188),
            ),
            child: const Stack(
              children: [Text("Bhadra")],
            ),
          )
        ],
      ),
    );
  }
}
