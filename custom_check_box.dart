import 'package:flutter/material.dart';
import 'package:my_packages_and_sc/common/custom_sizebox.dart';

class CustomCheckBox extends StatelessWidget {
  final void Function(bool?)? onChange;
  final bool value;
  final String? text;
  final OutlinedBorder? shape;
  final Color? checkColor;
  final Color? activeColor;

  const CustomCheckBox(
      {Key? key,
      this.onChange,
      required this.value,
      this.shape,
      this.checkColor,
      this.activeColor,
        this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return text == null
        ? Checkbox(
      shape: shape,
      checkColor: checkColor,
      activeColor: activeColor,
      value: value,
      onChanged: onChange,
    )
        : Row(
      children: [
        Checkbox(
          shape: shape,
          checkColor: checkColor,
          activeColor: activeColor,
          value: value,
          onChanged: onChange,
        ),
        Sb.w15,
        Text(text ?? "")
      ],
    );
  }
}
