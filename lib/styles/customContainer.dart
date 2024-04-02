// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
// ignore: unused_import

// class CustomContainer extends StatelessWidget {
//   final Widget child;

//   const CustomContainer({super.key, required this.child});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(top: 21, left: 22),
//       width: 74,
//       height: 74,
//       alignment: Alignment.center,
//       transformAlignment: Alignment.center,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(150),
//         gradient: const LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             Color(0xFF153F5B),
//             Color.fromARGB(255, 26, 77, 112),
//           ],
//         ),
//         boxShadow: const [
//           BoxShadow(
//             color: Color.fromARGB(255, 68, 147, 186),
//             offset: Offset(-5.5, -5.5),
//             blurRadius: 20,
//             spreadRadius: 0.0,
//           ),
//           BoxShadow(
//             color: Color.fromARGB(255, 3, 25, 36),
//             offset: Offset(5.5, 5.5),
//             blurRadius: 20,
//             spreadRadius: 0.0,
//           )
//         ],
//       ),
//       child: child,
//     );
//   }
// }

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
          color: const Color.fromARGB(75, 0, 0, 0)
          // gradient: const LinearGradient(
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          //   colors: [
          //     Color(0xFF153F5B),
          //     Color.fromARGB(255, 26, 77, 112),
          //   ],
          // ),
          // boxShadow: const [
          //   BoxShadow(
          //     color: Color.fromARGB(255, 33, 95, 137),
          //     offset: Offset(-5, -5),
          //     blurRadius: 5,
          //     spreadRadius: 0.0,
          //   ),
          //   BoxShadow(
          //     color: Color.fromARGB(255, 1, 18, 27),
          //     offset: Offset(5, 5),
          //     blurRadius: 5,
          //     spreadRadius: 0.0,
          //   )
          // ],
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
      width: 82,
      height: 456,
      alignment: Alignment.center,
      transformAlignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color.fromARGB(75, 0, 0, 0)

          // gradient: const LinearGradient(
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          //   colors: [
          //     Color(0xFF153F5B),
          //     Color.fromARGB(255, 26, 77, 112),
          //   ],
          // ),
          //   boxShadow: const [
          //     BoxShadow(
          //       color: Color.fromARGB(255, 33, 95, 137),
          //       offset: Offset(-5, -5),
          //       blurRadius: 5,
          //       spreadRadius: 0.0,
          //     ),
          //     BoxShadow(
          //       color: Color.fromARGB(255, 1, 18, 27),
          //       offset: Offset(5, 5),
          //       blurRadius: 5,
          //       spreadRadius: 0.0,
          //     )
          //   ],
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
      color: Colors.white);
}

class ElevatedButtonStyle {
  static ButtonStyle btnstyle = ElevatedButton.styleFrom(
    minimumSize: const Size(74, 74),
    backgroundColor: const Color.fromARGB(135, 1, 5, 7),
  );
  static ButtonStyle btnstyle0 = ElevatedButton.styleFrom(
      minimumSize: const Size(170, 74),
      backgroundColor: const Color.fromARGB(135, 1, 5, 7),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)));

  static ButtonStyle operatorStyle = ElevatedButton.styleFrom(
    elevation: 0,
    minimumSize: const Size(82, 82),
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
    ),
  );

  static ButtonStyle operatorStyleEquals = ElevatedButton.styleFrom(
    elevation: 0,
    minimumSize: const Size(82, 82),
    backgroundColor: const Color.fromARGB(124, 0, 0, 0),
    foregroundColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
    ),
  );
}

// ignore: camel_case_types
class mainscreen extends StatelessWidget {
  final Widget child;
  bool isValue = false;

  mainscreen({
    super.key,
    required this.child,
    required this.isValue,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(top: 46, left: 18, right: 18),
      height: 296,
      width: 394,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: isValue
            ? const LinearGradient(
                colors: [
                  Color.fromARGB(255, 31, 85, 121),
                  Color(0xff153f5b),
                  Color(0xff10344b)
                ],
                stops: [0.33, 0.66, 1],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              )
            : const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff333333),
                  Color(0xff333333),
                ],
              ),
        boxShadow: isValue
            ? const [
                BoxShadow(
                  color: Color.fromARGB(255, 92, 92, 92),
                  offset: Offset(-5, -5),
                  blurRadius: 15,
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0xff141414),
                  offset: Offset(5, 5),
                  blurRadius: 15,
                  spreadRadius: 0,
                ),
              ]
            : null,
      ),
      duration: const Duration(milliseconds: 250),
      child: child,
    );
  }
}

  
// class NeumorphicButton extends StatefulWidget {
//   static const double PRESSED_SCALE = 0.98;
//   static const double UNPRESSED_SCALE = 1.0;

//   final Widget? child;
//   final NeumorphicStyle? style;
//   final double minDistance;
//   final EdgeInsets? padding;
//   final EdgeInsets? margin;
//   final bool? pressed; //null, true, false
//   final Duration duration;
//   final Curve curve;
//   final NeumorphicButtonClickListener? onPressed;
//   final bool drawSurfaceAboveChild;
//   final bool provideHapticFeedback;
//   final String? tooltip;

//   NeumorphicButton({
//     Key? key,
//     this.padding,
//     this.margin = EdgeInsets.zero,
//     this.child,
//     this.tooltip,
//     this.drawSurfaceAboveChild = true,
//     this.pressed, //true/false if you want to change the state of the button
//     this.duration = Neumorphic.DEFAULT_DURATION,
//     this.curve = Neumorphic.DEFAULT_CURVE,
//     //this.accent,
//     this.onPressed,
//     this.minDistance = 0,
//     this.style,
//     this.provideHapticFeedback = true,
//   }) : super(key: key);

//   bool get isEnabled => onPressed != null;

//   @override
//   _NeumorphicButtonState createState() => _NeumorphicButtonState();
// }

// class _NeumorphicButtonState extends State<NeumorphicButton> {
//   late NeumorphicStyle initialStyle;

//   late double depth;
//   bool pressed = false; //overwrite widget.pressed when click for animation

//   void updateInitialStyle() {
//     final appBarPresent = NeumorphicAppBarTheme.of(context) != null;

//     final theme = NeumorphicTheme.currentTheme(context);
//     this.initialStyle = widget.style ??
//         (appBarPresent
//             ? theme.appBarTheme.buttonStyle
//             : (theme.buttonStyle ?? const NeumorphicStyle()));
//     depth = widget.style?.depth ??
//         (appBarPresent ? theme.appBarTheme.buttonStyle.depth : theme.depth) ??
//         0.0;

//     setState(() {});
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     updateInitialStyle();
//   }

//   @override
//   void didUpdateWidget(NeumorphicButton oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     updateInitialStyle();
//   }

//   Future<void> _handlePress() async {
//     hasFinishedAnimationDown = false;
//     setState(() {
//       pressed = true;
//       depth = widget.minDistance;
//     });

//     await Future.delayed(widget.duration); //wait until animation finished
//     hasFinishedAnimationDown = true;

//     //haptic vibration
//     if (widget.provideHapticFeedback) {
//       HapticFeedback.lightImpact();
//     }

//     _resetIfTapUp();
//   }

//   bool hasDisposed = false;

//   @override
//   void dispose() {
//     super.dispose();
//     hasDisposed = true;
//   }

//   //used to stay pressed if no tap up
//   void _resetIfTapUp() {
//     if (hasFinishedAnimationDown == true && hasTapUp == true && !hasDisposed) {
//       setState(() {
//         pressed = false;
//         depth = initialStyle.depth ?? neumorphicDefaultTheme.depth;

//         hasFinishedAnimationDown = false;
//         hasTapUp = false;
//       });
//     }
//   }

//   bool get clickable {
//     return widget.isEnabled && widget.onPressed != null;
//   }

//   bool hasFinishedAnimationDown = false;
//   bool hasTapUp = false;

//   @override
//   Widget build(BuildContext context) {
//     final result = _build(context);
//     if (widget.tooltip != null) {
//       return Tooltip(
//         message: widget.tooltip!,
//         child: result,
//       );
//     } else {
//       return result;
//     }
//   }

//   Widget _build(BuildContext context) {
//     final appBarPresent = NeumorphicAppBarTheme.of(context) != null;
//     final appBarTheme = NeumorphicTheme.currentTheme(context).appBarTheme;

//     return GestureDetector(
//       onTapDown: (detail) {
//         hasTapUp = false;
//         if (clickable && !pressed) {
//           _handlePress();
//         }
//       },
//       onTapUp: (details) {
//         if (clickable) {
//           widget.onPressed!();
//         }
//         hasTapUp = true;
//         _resetIfTapUp();
//       },
//       onTapCancel: () {
//         hasTapUp = true;
//         _resetIfTapUp();
//       },
//       child: animationScale.AnimatedScale(
//         scale: _getScale(),
//         child: Neumorphic(
//           margin: widget.margin ?? const EdgeInsets.all(0),
//           drawSurfaceAboveChild: widget.drawSurfaceAboveChild,
//           duration: widget.duration,
//           curve: widget.curve,
//           padding: widget.padding ??
//               (appBarPresent ? appBarTheme.buttonPadding : null) ??
//               const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
//           style: initialStyle.copyWith(
//             depth: _getDepth(),
//           ),
//           child: widget.child,
//         ),
//       ),
//     );
//   }

//   double _getDepth() {
//     if (widget.isEnabled) {
//       return this.depth;
//     } else {
//       return 0;
//     }
//   }

//   double _getScale() {
//     if (widget.pressed != null) {
//       //defined by the widget that use it
//       return widget.pressed!
//           ? NeumorphicButton.PRESSED_SCALE
//           : NeumorphicButton.UNPRESSED_SCALE;
//     } else {
//       return this.pressed
//           ? NeumorphicButton.PRESSED_SCALE
//           : NeumorphicButton.UNPRESSED_SCALE;
//     }
//   }
// }

