import 'package:flutter/material.dart';

import '../constants.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField({
    super.key,
    required this.hintText,
    this.maxLine = 1,
    this.onSaved,
  });
  final String hintText;
  final int maxLine;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      maxLines: maxLine,
      cursorColor: kPrimaryColor,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'This field is requred';
        }
        return null;
      },
      decoration: InputDecoration(
          hintText: hintText,
          border: borderDecoration(),
          enabledBorder: borderDecoration(),
          focusedBorder: borderDecoration(kPrimaryColor)),
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
