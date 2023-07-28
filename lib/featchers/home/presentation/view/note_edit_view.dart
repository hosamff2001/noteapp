import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widgets/custom_icon.dart';
import '../../data/model/note_model.dart';
import '../manger/notes_cuibt/notes_cubit.dart';
import 'widgets/note_edit_view_body.dart';

class NoteEditView extends StatefulWidget {
  const NoteEditView({super.key, required this.note});
  final NoteModel note;

  @override
  State<NoteEditView> createState() => _NoteEditViewState();
}

class _NoteEditViewState extends State<NoteEditView> {
  String? title;
  String? subtitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Your Note"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14.0, top: 4, bottom: 4),
            child: CustomIcon(
              onTap: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = subtitle ?? widget.note.subtitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).loadnotes();
                GoRouter.of(context).pop();
              },
              icon: Icons.check,
            ),
          )
        ],
      ),
      body: NoteEditViewBody(
        note: widget.note,
        onChange1: (value) {
          title = value;
        },
        onChange2: (value) {
          subtitle = value;
        },
      ),
    );
  }
}
