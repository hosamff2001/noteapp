import 'package:flutter/material.dart';


import 'custom_note_form.dart';

class CustomBottomShet extends StatelessWidget {
  const CustomBottomShet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

