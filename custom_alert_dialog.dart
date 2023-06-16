import 'package:flutter/material.dart';
import 'package:my_packages_and_sc/common/custom_sizebox.dart';
import 'custom_color.dart';

customAlertDialog(BuildContext context, String message) {
  BuildContext dialogContext;
  Widget okButton = TextButton(
    child: const Text(
      "OK",
      style: TextStyle(color: kAlertDialogColor),
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  AlertDialog alert = AlertDialog(
    title: const Text(
      "Alert Dialog",
      style: TextStyle(color: kAlertDialogColor, fontWeight: FontWeight.bold),
    ),
    content: Text(message),
    actions: [
      okButton,
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      dialogContext = context;
      return alert;
    },
  );
}



Future<void> customShowDialog(BuildContext context,String dis,String type) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return CustomDialogBox(  descriptions: dis, type: type,);
    },
  );
}


class CustomDialogBox extends StatefulWidget {
  final String descriptions;
  final String type;

  const CustomDialogBox({Key? key, required this.descriptions, required this.type})
      : super(key: key);

  @override
  State<CustomDialogBox> createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 100,
                width: double.infinity,
                decoration:  BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: changeColor(widget.type),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child:  Icon(changeIcon(widget.type),
                    color: Colors.white, size: 45),
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Sb.h10,
                     Text(widget.type,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Sb.h10,
                     Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          widget.descriptions,
                          style: const TextStyle(fontSize: 16)),
                    ),
                    Sb.h10,
                    Row(
                      children: [
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child:  Text("Ok",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: changeColor(widget.type),
                                  fontWeight: FontWeight.bold)),
                        ),
                        Sb.w8,
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

changeColor(entry) {
  if (entry == "Oops..") {
    return const Color(0xffdd0338);
  } else if(entry == "Success") {
    return const Color(0xff0fbf6a);
  }else if(entry == "Warning") {
    return const Color(0xff027d80);
  }else if(entry == "Info") {
    return const Color(0xfffdc747);
  }else if(entry == "Sure") {
    return const Color(0xff33ccba);
  }
}

changeIcon(entry) {
  if (entry == "Oops..") {
    return  Icons.highlight_remove_sharp;
  } else if(entry == "Success") {
    return Icons.done_outline_rounded;
  }else if(entry == "Warning") {
    return Icons.warning_sharp;
  }else if(entry == "Info") {
    return Icons.info;
  }else if(entry == "Sure") {
    return Icons.thumb_up_alt;
  }
}
