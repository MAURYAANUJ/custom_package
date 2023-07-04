import 'package:flutter/material.dart';


class CustomGradientContainer extends StatelessWidget {
  final Widget child;
  final double? radius;
  final double? height;
  final double? width;
  final double? borderWidth;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final MaterialColor color;
  final Color? borderColor;

  const CustomGradientContainer(
      {Key? key, required this.child,
        this.radius = 0,
        this.padding,
        this.margin,
        required this.color,
        this.borderColor = Colors.black38,
        this.height,
        this.width,
        this.borderWidth = 1.0,
        this.borderRadius,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:width,
      height:height,
      decoration: BoxDecoration(
          borderRadius:  BorderRadius.all(Radius.circular(radius!)),
          boxShadow: [
            BoxShadow(
              color:  color.shade300,
              offset: const Offset(0, 5),
              blurRadius: 10,
              spreadRadius: -2,
            ),
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              colors: [
                color.shade200,
                color.shade300,
                color.shade500,
                color.shade500,
              ],
              stops: const [
                0.1,
                0.3,
                0.9,
                1.0
              ])),
      child:child,
    );
  }
}
