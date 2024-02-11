import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLine = 1,
  });
  final String hintText;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
          hintText: hintText,
          border: borderDecoration(),
          enabledBorder: borderDecoration(),
          focusedBorder: borderDecoration(KPrimaryColor)),
    );
  }

  OutlineInputBorder borderDecoration([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: Color ?? Colors.white,
        ));
  }
}
