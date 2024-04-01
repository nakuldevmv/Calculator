import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

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
          )
        ],
      ),
      child: child,
    );
  }
}

class CustomContainerBox extends StatelessWidget {
  final Widget child;

  const CustomContainerBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 21, left: 22),
      width: 265,
      height: 82,
      alignment: Alignment.center,
      transformAlignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
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
          )
        ],
      ),
      child: child,
    );
  }
}

class CustomContainerBox2 extends StatelessWidget {
  final Widget child;

  const CustomContainerBox2({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 21, left: 22),
      width: 88,
      height: 456,
      alignment: Alignment.center,
      transformAlignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
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
          )
        ],
      ),
      child: child,
    );
  }
}

class TextStyleClass {
  // 1. Change to a regular class (not a widget)
  static const TextStyle style = TextStyle(
    // 2. Use a static const property for style
    fontSize: 32,
    fontWeight: FontWeight.normal,
  );
}

class ElevatedButtonStyle {
  static ButtonStyle btnstyle = ElevatedButton.styleFrom(
      minimumSize: const Size(74, 74),
      backgroundColor: Colors.amber,
      foregroundColor: Colors.blue,
      shadowColor: Colors.amberAccent,
      elevation: 20);
}
