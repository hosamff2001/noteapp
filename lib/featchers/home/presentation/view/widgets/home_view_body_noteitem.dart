import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utliz/stayles.dart';
import '../../../data/model/note_model.dart';
import '../../manger/notes_cuibt/notes_cubit.dart';

class NoteCardItem extends StatelessWidget {
  const NoteCardItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        padding: const EdgeInsets.only(top: 7, bottom: 17, right: 16, left: 8),
        decoration: BoxDecoration(
            color: Color(note.color), borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).loadnotes();
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                  )),
              title: Text(
                note.title,
                style: Styles.textStyle18.copyWith(color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  note.subtitle,
                  style: Styles.textStyle14
                      .copyWith(color: Colors.black.withOpacity(0.4)),
                ),
              ),
            ),
            Text(
              note.date,
              style: Styles.textStyle14.copyWith(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
