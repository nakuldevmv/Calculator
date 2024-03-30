import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;

  const CustomContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 21, left: 22),
      width: 74,
      height: 74,
      alignment: Alignment.center,
      transformAlignment: Alignment.center,
      child: Container(
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
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 68, 147, 186),
                offset: Offset(-5.5, -5.5),
                blurRadius: 20,
                spreadRadius: 0.0,
              ),
              BoxShadow(
                color: Color.fromARGB(255, 3, 25, 36),
                offset: Offset(5.5, 5.5),
                blurRadius: 20,
                spreadRadius: 0.0,
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}
