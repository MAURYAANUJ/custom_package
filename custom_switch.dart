import 'package:flutter/material.dart';

import 'custom_color.dart';

class CustomSwitchSc extends StatelessWidget {
  final bool value;
  final String text;
  final void Function(bool?) onChange;
  const CustomSwitchSc({Key? key, required this.value, required this.onChange, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
            activeColor: Colors.white,
            activeTrackColor: kSwitchColor,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: Colors.grey.shade400,
            splashRadius: 50.0,
            value: value,
            onChanged:onChange
        ),
        Text(text)
      ],
    );
  }
}