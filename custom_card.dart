import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final double radius;
  final double elevation;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? color;
  final Color? shadowColor;

  const CustomCard({
    Key? key,
    required this.child,
    this.radius = 5,
    this.padding,
    this.elevation = 2,
    this.margin,
    this.color = Colors.white,
    this.shadowColor = Colors.black38,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: margin ?? const EdgeInsets.all(4.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      elevation: elevation,
      shadowColor: shadowColor,
      color: color,
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: child,
      ),
    );
  }
}
