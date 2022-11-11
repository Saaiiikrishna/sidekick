import 'package:flutter/material.dart';

// Colors
const Color skBackGround = Color(0xFF212121);
const Color skForeGround = Color(0xFF212121);
const Color skDarkShadow = Color(0xFF000000);
const Color skLightShadow = Color(0xFF424242);
const Color skMainText = Color(0xff748ca3);
const Color skSecondaryText = Color(0xff92aabf);
const Color skIndicator = Color(0xff9760d0);
const Color skIndicatorSecondary = Color(0x66747ae3);

// Neumorphism Button

class NeuButton extends StatefulWidget {
  final Widget child;
  final VoidCallback onPressed;
  final double radius;
  const NeuButton(
      {Key? key,
      required this.child,
      required this.onPressed,
      required this.radius})
      : super(key: key);

  @override
  State<NeuButton> createState() => _NeuButtonState();
}

class _NeuButtonState extends State<NeuButton> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) => setState(() => isPressed = true),
      onTapUp: (value) => setState(() => isPressed = false),
      onTapCancel: () => setState(() => isPressed = false),
      onTap: widget.onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 75),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: skForeGround,
          borderRadius: BorderRadius.circular(widget.radius),
          boxShadow: isPressed
              ? null
              : [
                  const BoxShadow(
                    color: skDarkShadow,
                    offset: Offset(5, 5),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                  const BoxShadow(
                    color: skLightShadow,
                    offset: Offset(-5, -5),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                ],
        ),
        child: widget.child,
      ),
    );
  }
}

// NeuBox

class NeuBox extends StatelessWidget {
  final Widget child;
  final double radius;
  const NeuBox({Key? key, required this.child, required this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: skForeGround,
          borderRadius: BorderRadius.circular(radius),
          boxShadow: const [
            BoxShadow(
              color: skDarkShadow,
              offset: Offset(5, 5),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: skLightShadow,
              offset: Offset(-5, -5),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ]),
      child: Center(child: child),
    );
  }
}

// Bar Indication

class BarIndicator extends StatelessWidget {
  const BarIndicator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      height: isActive ? 5 : 2,
      width: isActive ? 45 : 15,
      decoration: BoxDecoration(
        color: isActive ? skIndicator : skIndicatorSecondary,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}

// Font Size

const double skBodyTextSize = 16;

// Screen Size
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenHeightPercentage(BuildContext context, {double percentage = 1}) =>
    screenHeight(context) * percentage;

double screenWidthPercentage(BuildContext context, {double percentage = 1}) =>
    screenWidth(context) * percentage;
