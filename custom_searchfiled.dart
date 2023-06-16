import 'package:flutter/material.dart';


class CustomSearchFiled extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? trailing;
  final double? borderWidth;
  final double? width;
  final String? hintText;
  final double? height;
  final Color? borderColor;
  final Color? color;
  final double? borderRadius;
  final void Function(String)? onChanged;
  const CustomSearchFiled({Key? key, this.leading, this.title, this.trailing, this.borderWidth, this.width, this.hintText, this.height, this.borderColor, this.color, this.borderRadius, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: borderColor??Colors.white, width: 1.0),
        borderRadius: BorderRadius.circular(borderRadius??0.0),
      ),
      child: TextField(
        onChanged: onChanged,
        cursorColor: borderColor??Colors.blue,
        style:  TextStyle(color: borderColor??Colors.blue),
        decoration:  InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(color:borderColor??Colors.blue, width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide:    BorderSide(color: borderColor??Colors.blue, width: 1.0),
            ),
            hintText: hintText,
            prefixIcon: leading,
            hintStyle: TextStyle(color: borderColor??Colors.white),
            border: InputBorder.none),
      ),
    );
  }
}




