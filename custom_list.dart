import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? trailing;
  final bool? dense;
  final double? borderWidth;
  final Color? borderColor;
  final void Function()? onTap;
  final double? borderRadius;
  const CustomListTile({Key? key, this.leading, this.dense, this.onTap, this.title, this.trailing,  this.borderWidth, this.borderColor, this.borderRadius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        side:  BorderSide(
            width: borderWidth ?? 0.0, color: borderColor??Colors.white),
        borderRadius: BorderRadius.circular(borderRadius??0.0),
      ),
      leading: leading,
      dense: dense,
      onTap: onTap,
      title: title,
      trailing: trailing,
    );
  }
}
