import 'package:flutter/material.dart';

import 'custom_color.dart';


class CustomDropdownContainer extends StatelessWidget {
  final String? value;
  final String? hint;
  final void Function(String?) onChange;
  final List<DropdownMenuItem<String>> items;
  const CustomDropdownContainer({Key? key, this.value, this.hint, required this.onChange, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5.0, right: 5.0),
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        color: kDropDownColor,
        border: Border.all(color: kDropDownBorder, width: 1.0),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: value,
            isDense: true,
            dropdownColor: kDropDownBg,
            menuMaxHeight: 450,
            isExpanded: true,
            iconEnabledColor: kDropDownIcon,
            items: items,
            hint:  Padding(
              padding: const EdgeInsets.only(left: 3.0),
              child: Text(
                hint!,
                style: const TextStyle(
                  color: kDropDownHint,
                  fontSize: 14.5,
                ),
              ),
            ),
            onChanged: onChange,
          ),
        ),
      ),
    );
  }
}


