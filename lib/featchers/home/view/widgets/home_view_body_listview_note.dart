import 'package:flutter/material.dart';
import 'package:noteapp/featchers/home/view/widgets/home_view_body_noteitem.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (context, index) {
        return const NoteCardItem();
      },
    );
  }
}
