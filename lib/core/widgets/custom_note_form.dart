import 'package:flutter/material.dart';

import '../../constans.dart';
import '../utliz/stayles.dart';
import 'custom_textfiled.dart';
import 'custombutton.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidate = AutovalidateMode.disabled;

  String? title;
  String? subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidate,
      child: Column(
        children: [
          CustomTextFormFiled(
            onSaved: (value) {
              title = value;
            },
            hint: "title",
          ),
          const SizedBox(
            height: 12,
          ),
          CustomTextFormFiled(
            onSaved: (value) {
              subtitle = value;
            },
            hint: "content",
            maxline: 5,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.1,
          ),
          CustomButton(
            onPressed: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidate = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
            backgroundcolor: kPrimaryColor,
            text: "Add",
            textstyle: Styles.textStyle18.copyWith(color: Colors.black),
          )
        ],
      ),
    );
  }
}
