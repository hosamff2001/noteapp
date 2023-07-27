import 'package:flutter/material.dart';

import '../../constans.dart';
import '../utliz/stayles.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled(
      {super.key, required this.hint, this.maxline = 1, this.onSaved});
  final String hint;
  final int maxline;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "The Field is Empty";
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxline,
      decoration: InputDecoration(
          enabledBorder: borderdecoration(),
          focusedBorder: borderdecoration(kPrimaryColor),
          hintText: hint,
          hintStyle: Styles.textStyle14.copyWith(color: kPrimaryColor),
          border: borderdecoration(kPrimaryColor)),
    );
  }

  OutlineInputBorder borderdecoration([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
