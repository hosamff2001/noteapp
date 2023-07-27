import 'package:flutter/material.dart';
import 'package:noteapp/core/widgets/custom_icon.dart';

import 'widgets/note_edit_view_body.dart';

class NoteEditView extends StatelessWidget {
  const NoteEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Your Note"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14.0, top: 4, bottom: 4),
            child: CustomIcon(
              onTap: () {},
              icon: Icons.check,
            ),
          )
        ],
      ),
      body: const NoteEditViewBody(),
    );
  }
}
