import 'package:flutter/material.dart';


class CustomContainer extends StatelessWidget {
  final Widget child;
  final double? radius;
  final double? height;
  final double? width;
  final double? borderWidth;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? color;
  final Color? borderColor;

  const CustomContainer(
      {Key? key, required this.child,
        this.radius = 5,
        this.padding,
        this.margin,
        this.color = Colors.white,
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
        color:color??Colors.white,
        border: Border.all(
            color: borderColor ?? Colors.black38, width:borderWidth??0.0 ),
        borderRadius: BorderRadius.circular(borderRadius ?? 0.0),
      ),
      child:child,
    );
  }
}