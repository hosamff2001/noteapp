import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utliz/routers.dart';
import '../../manger/notes_cuibt/notes_cubit.dart';
import 'home_view_body_noteitem.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(builder: (context, state) {
      if (state is NotesSuccess) {
        return ListView.builder(
            itemCount: state.notes.length,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.keditview,extra: state.notes[index]);
                  },
                  child:  NoteCardItem(note:state.notes[index]));
            });
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
