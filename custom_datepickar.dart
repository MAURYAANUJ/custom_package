
import 'package:flutter/material.dart';

import 'custom_color.dart';

class CustomDatePikerSc extends StatelessWidget {
  final String hintText;
  final void Function() onTap;
  final TextEditingController controller;
  const CustomDatePikerSc({Key? key, required this.onTap, required this.controller, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 5.0,right: 5.0 ),
      child: SizedBox(
        height: 45,
        child: TextField(
          controller: controller,
            readOnly: true,
            decoration: InputDecoration(
                counterText: "",
                suffixIcon: const Icon(Icons.calendar_month,color: kDatePickerIcon),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide:    const BorderSide(color: kDatePickerBorder, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide:   const BorderSide(color: kDatePickerBorder, width: 1.0),
                ),
                border: const OutlineInputBorder(),
                labelText: hintText,
                labelStyle: const TextStyle(color: kDatePickerHint, fontSize: 14),
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 12)),
          onTap: onTap
        ),
      ),
    );
  }
}


