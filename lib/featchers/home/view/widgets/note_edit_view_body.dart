import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_textfiled.dart';

class NoteEditViewBody extends StatelessWidget {
  const NoteEditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
      child: Column(
        children: [
          CustomTextFiled(hint: "title"),
          SizedBox(
            height: 14,
          ),
          CustomTextFiled(
            hint: "content",
            maxline: 5,
          )
        ],
      ),
    );
  }
}
