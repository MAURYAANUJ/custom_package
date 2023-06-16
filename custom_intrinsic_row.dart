import 'package:flutter/material.dart';

import 'custom_color.dart';

///name   |  anuj
class CustomInHeight extends StatelessWidget {
  final String left;
  final String right;
  const CustomInHeight( this.left,this.right, {super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:  [
          Expanded(
              flex: 2,
              child: Text(
                left,
                style: const TextStyle(color: kInHeightColor,fontSize: 14),
              )),
          const VerticalDivider(
            color: Colors.black,
            thickness: 1,
          ),
          Expanded(
              flex: 2,
              child: Text(right)),
        ],
      ),
    );
  }
}

///name(u can assign color which u want)  |  anuj(u can assign color which u want)
class CustomInHeightColor extends StatelessWidget {
  final String left;
  final Color? colourFirst;
  final String right;
  final Color? colourSecond;
  const CustomInHeightColor( this.left,this.right, {super.key, this.colourFirst, this.colourSecond});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:  [
          Expanded(
              flex: 2,
              child: Text(
                left,
                style: TextStyle(color: colourFirst,fontSize: 14),
              )),
          const VerticalDivider(
            color: Colors.black,
            thickness: 1,
          ),
          Expanded(
              flex: 2,
              child: Text(right==""?"N/A":right, style: TextStyle(color: colourSecond,fontSize: 14),)),
        ],
      ),
    );
  }
}

///description | the sentence
class CustomInHeightOne extends StatelessWidget {
  final String first;
  final String second;
  const CustomInHeightOne(  {super.key, required this.first, required this.second});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:  [
          Expanded(
              flex: 1,
              child: Text(
                first,
                style: const TextStyle(color: kInHeightColor,fontSize: 14),
              )),
          Expanded(
              flex: 3,
              child: Text(second==""?"N/A":second,style: const TextStyle(color: Colors.black,fontSize: 14),)),
        ],
      ),
    );
  }
}

///name:-anuj  | roll no:-21
class CustomInHeightTwo extends StatelessWidget {
  final String first;
  final String firstAns;
  final String second;
  final String secondAns;
  const CustomInHeightTwo(  {super.key, required this.first, required this.firstAns, required this.second,  required this.secondAns});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:  [
          Expanded(
              flex: 1,
              child: Text(
                first,
                style: const TextStyle(color: kInHeightColor,fontSize: 14),
              )),
          Expanded(
              flex: 1,
              child: Text(
                firstAns,
              )),
          const VerticalDivider(
            color: Colors.black,
            thickness: 1,
          ),
          Expanded(
              flex: 1,
              child: Text(second==""?"N/A":second,style: const TextStyle(color: kInHeightColor,fontSize: 14),)),
          Expanded(
              flex: 1,
              child: Text(secondAns==""?"N/A":secondAns)),
        ],
      ),
    );
  }
}

/// |
class CustomCommonDivider extends StatelessWidget{
  const CustomCommonDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.black,
    );
  }
}

///blue color box with center text
class CustomColorContainer extends StatelessWidget {
  final String text ;
  final  double hight ;
  final  Color fitColor ;
  const CustomColorContainer({Key? key, required this.text, required this.hight, required this.fitColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: hight,
        width: double.infinity,
        color: fitColor,
        child:
        Center(child: Text(text)));
  }
}
