import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_color.dart';
import 'custom_sizebox.dart';

Widget customProgressDialog() {
  return SizedBox(
      height: 100,
      width: 100,
      child: Center(
          child: Transform.scale(
            scale: 1.5,
            child: const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(kCircularIndicatorColor),
              strokeWidth: 2.5,
            ),
          )));
}


Widget customProgressDialogBox(String text) {
  return  SizedBox(
      height: 100,
      width: 100,
      child: Center(
          child: Card(
            color: CupertinoColors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 250,
                child: Row(
                  children: [
                    Sb.w20,
                    Transform.scale(
                      scale: 1.0,
                      child: const CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(kCircularIndicatorColor),
                        strokeWidth: 2.0,
                      ),
                    ),
                    Sb.w60,
                     DefaultTextStyle(
                      style: const TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),
                      child: Text(text),
                    )
                  ],
                ),
              ),
            ),
          )));
}

void dismissIndicator(BuildContext context) {
  Navigator.of(context, rootNavigator: true).pop(context);
}