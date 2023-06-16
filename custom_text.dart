import 'package:flutter/material.dart';


class CustomText extends StatelessWidget {
  final FontWeight? weight;
  final Color? color;
  final double? size;
  final String text;
  const CustomText({Key? key, this.weight, this.color, this.size, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle( fontWeight:weight,color:color,fontSize:size ),);
  }
}
