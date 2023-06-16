import 'package:flutter/material.dart';

Future<void> customProfileDialog(BuildContext context, String dis, String name) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return CustomDialogBox(imagePath: dis, name: name,);
    },
  );
}

class CustomDialogBox extends StatefulWidget {
  final String imagePath;
  final String name;

  const CustomDialogBox({Key? key, required this.imagePath, required this.name}) : super(key: key);

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
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.8,
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                image: widget.imagePath==""?null:DecorationImage(
                    image: NetworkImage(widget.imagePath), fit: BoxFit.fill),
              ),
              child: widget.imagePath!=""?null:Icon(Icons.account_circle,color: Colors.grey,size:MediaQuery.of(context).size.height / 3.8 ),
            ),
            Container(
              width: double.infinity,
              height: 32,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.black87,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(widget.name,style: const TextStyle(fontSize: 20,color: Colors.white)),
              ),
            )
          ],
        ),
      ],
    );
  }
}
