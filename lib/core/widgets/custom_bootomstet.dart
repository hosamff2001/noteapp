import 'package:flutter/material.dart';
import 'package:noteapp/constans.dart';
import 'package:noteapp/core/utliz/stayles.dart';

import 'custom_textfiled.dart';
import 'custombutton.dart';

class CustomBottomShet extends StatelessWidget {
  const CustomBottomShet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomTextFiled(
              hint: "title",
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextFiled(
              hint: "content",
              maxline: 5,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.1,
            ),
            CustomButton(
              onPressed: () {},
              backgroundcolor: kPrimaryColor,
              text: "Add",
              textstyle: Styles.textStyle18.copyWith(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
