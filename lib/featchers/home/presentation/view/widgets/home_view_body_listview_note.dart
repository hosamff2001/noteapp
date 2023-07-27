import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utliz/routers.dart';
import 'home_view_body_noteitem.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (context, index) {
        return InkWell(
            onTap: () {
              GoRouter.of(context).push(AppRouter.keditview);
            },
            child: const NoteCardItem());
      },
    );
  }
}