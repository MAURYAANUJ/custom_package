import 'package:flutter/material.dart';


///[Sb] give you support for adding a fixed space or a custom space width and height, which can be added and used any where in rows, Column and etc.
// ignore: must_be_immutable
class Sb extends StatelessWidget {
  final bool _top;
  final bool _custom;

  ///[height] height should be passed in double or else it will be 0px
  double? height;

  ///[width] height should be passed in width or else it will be 0px
  double? width;




  ///[Sb.h3] give space of fixed height
  static SizedBox h1 = const SizedBox(height: 1);
  static SizedBox h2 = const SizedBox(height: 2);
  static SizedBox h3 = const SizedBox(height: 3);
  static SizedBox h4 = const SizedBox(height: 4);
  static SizedBox h5 = const SizedBox(height: 5);
  static SizedBox h6 = const SizedBox(height: 6);
  static SizedBox h7 = const SizedBox(height: 7);
  static SizedBox h8 = const SizedBox(height: 8);
  static SizedBox h9 = const SizedBox(height: 9);
  static SizedBox h10 = const SizedBox(height: 10);

  static SizedBox h11 = const SizedBox(height: 11);
  static SizedBox h12 = const SizedBox(height: 12);
  static SizedBox h13 = const SizedBox(height: 13);
  static SizedBox h14 = const SizedBox(height: 14);
  static SizedBox h15 = const SizedBox(height: 15);
  static SizedBox h16 = const SizedBox(height: 16);
  static SizedBox h17 = const SizedBox(height: 17);
  static SizedBox h18 = const SizedBox(height: 18);
  static SizedBox h19 = const SizedBox(height: 19);
  static SizedBox h20 = const SizedBox(height: 20);


  static SizedBox h21 = const SizedBox(height: 21);
  static SizedBox h22 = const SizedBox(height: 22);
  static SizedBox h23 = const SizedBox(height: 23);
  static SizedBox h24 = const SizedBox(height: 24);
  static SizedBox h25 = const SizedBox(height: 25);
  static SizedBox h26 = const SizedBox(height: 26);
  static SizedBox h27 = const SizedBox(height: 27);
  static SizedBox h28 = const SizedBox(height: 28);
  static SizedBox h29 = const SizedBox(height: 29);
  static SizedBox h30 = const SizedBox(height: 30);

  static SizedBox h31 = const SizedBox(height: 31);
  static SizedBox h32 = const SizedBox(height: 32);
  static SizedBox h33 = const SizedBox(height: 33);
  static SizedBox h34 = const SizedBox(height: 34);
  static SizedBox h35 = const SizedBox(height: 35);
  static SizedBox h36 = const SizedBox(height: 36);
  static SizedBox h37 = const SizedBox(height: 37);
  static SizedBox h38 = const SizedBox(height: 38);
  static SizedBox h39 = const SizedBox(height: 39);
  static SizedBox h40 = const SizedBox(height: 40);


  static SizedBox h50 = const SizedBox(height: 50);
  static SizedBox h60 = const SizedBox(height: 60);
  static SizedBox h70 = const SizedBox(height: 70);
  static SizedBox h80 = const SizedBox(height: 80);
  static SizedBox h90 = const SizedBox(height: 90);


  static SizedBox h55 = const SizedBox(height: 55);
  static SizedBox h65 = const SizedBox(height: 65);
  static SizedBox h75 = const SizedBox(height: 75);
  static SizedBox h85 = const SizedBox(height: 85);
  static SizedBox h95 = const SizedBox(height: 95);

  ///[Sb.w3] give space of fixed width

  static SizedBox w1 = const SizedBox(width: 1);
  static SizedBox w2 = const SizedBox(width: 2);
  static SizedBox w3 = const SizedBox(width: 3);
  static SizedBox w4 = const SizedBox(width: 4);
  static SizedBox w5 = const SizedBox(width: 5);
  static SizedBox w6 = const SizedBox(width: 6);
  static SizedBox w7 = const SizedBox(width: 7);
  static SizedBox w8 = const SizedBox(width: 8);
  static SizedBox w9 = const SizedBox(width: 9);
  static SizedBox w10 = const SizedBox(width: 10);

  static SizedBox w11 = const SizedBox(width: 11);
  static SizedBox w12 = const SizedBox(width: 12);
  static SizedBox w13 = const SizedBox(width: 13);
  static SizedBox w14 = const SizedBox(width: 14);
  static SizedBox w15 = const SizedBox(width: 15);
  static SizedBox w16 = const SizedBox(width: 16);
  static SizedBox w17 = const SizedBox(width: 17);
  static SizedBox w18 = const SizedBox(width: 18);
  static SizedBox w19 = const SizedBox(width: 19);
  static SizedBox w20 = const SizedBox(width: 20);


  static SizedBox w21 = const SizedBox(width: 21);
  static SizedBox w22 = const SizedBox(width: 22);
  static SizedBox w23 = const SizedBox(width: 23);
  static SizedBox w24 = const SizedBox(width: 24);
  static SizedBox w25 = const SizedBox(width: 25);
  static SizedBox w26 = const SizedBox(width: 26);
  static SizedBox w27 = const SizedBox(width: 27);
  static SizedBox w28 = const SizedBox(width: 28);
  static SizedBox w29 = const SizedBox(width: 29);
  static SizedBox w30 = const SizedBox(width: 30);

  static SizedBox w31 = const SizedBox(width: 31);
  static SizedBox w32 = const SizedBox(width: 32);
  static SizedBox w33 = const SizedBox(width: 33);
  static SizedBox w34 = const SizedBox(width: 34);
  static SizedBox w35 = const SizedBox(width: 35);
  static SizedBox w36 = const SizedBox(width: 36);
  static SizedBox w37 = const SizedBox(width: 37);
  static SizedBox w38 = const SizedBox(width: 38);
  static SizedBox w39 = const SizedBox(width: 39);
  static SizedBox w40 = const SizedBox(width: 40);


  static SizedBox w50 = const SizedBox(width: 50);
  static SizedBox w60 = const SizedBox(width: 60);
  static SizedBox w70 = const SizedBox(width: 70);
  static SizedBox w80 = const SizedBox(width: 80);
  static SizedBox w90 = const SizedBox(width: 90);


  static SizedBox w55 = const SizedBox(height: 55);
  static SizedBox w65 = const SizedBox(height: 65);
  static SizedBox w75 = const SizedBox(height: 75);
  static SizedBox w85 = const SizedBox(height: 85);
  static SizedBox w95 = const SizedBox(height: 95);



  ///[Sb.empty] give space of fixed height 0px & width 0px
  static SizedBox empty = const SizedBox();


  ///Sb._top() this Method gives you the space of [safeArea] from _top.
  Sb.top({Key? key})
      : _top = true,
        _custom = false,
        super(key: key);

  ///Sb.bottom() this Method gives you the space of [safeArea] from bottom.
  Sb.bottom({Key? key})
      : _top = false,
        _custom = false,
        super(key: key);

  ///Sb._custom() this Method gives you the ease to create _custom space.
  Sb.custom({Key? key, this.height, this.width})
      : _top = false,
        _custom = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return _custom
        ? SizedBox(
      key: key,
      height: height,
      width: width,
    )
        : SizedBox(
      key: key,
      height: _top
          ? MediaQuery.of(context).padding.top
          : MediaQuery.of(context).padding.bottom,
    );
  }
}