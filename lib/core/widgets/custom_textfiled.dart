import 'package:flutter/material.dart';

import '../../constans.dart';
import '../utliz/stayles.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hint,  this.maxline =1});
  final String hint;
  final int maxline;
  @override
  Widget build(BuildContext context) {
    return TextField(
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
