import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_textfiled.dart';
import '../../../data/model/note_model.dart';

class NoteEditViewBody extends StatelessWidget {
  const NoteEditViewBody(
      {super.key, required this.note, this.onChange1, this.onChange2});
  final NoteModel note;
  final void Function(String)? onChange1;
  final void Function(String)? onChange2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
      child: Column(
        children: [
          CustomTextFormFiled(onChange: onChange1, hint: note.title),
          const SizedBox(
            height: 14,
          ),
          CustomTextFormFiled(
            onChange: onChange2,
            hint: note.subtitle,
            maxline: 5,
          )
        ],
      ),
    );
  }
}
