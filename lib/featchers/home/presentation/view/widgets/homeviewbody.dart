import 'package:flutter/material.dart';

import 'home_view_body_appbar.dart';
import 'home_view_body_listview_note.dart';

class HomeNoteViewBody extends StatelessWidget {
  const HomeNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
      child: Column(
        children: [
          HomeNoteViewbodyAppBar(),
          SizedBox(
            height: 12,
          ),
          Expanded(child: NoteListView())
        ],
      ),
    );
  }
}
