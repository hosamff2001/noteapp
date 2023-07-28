// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:meta/meta.dart';

import '../../../data/model/note_model.dart';
import '../../../data/repo/note_repo.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  final NoteRepo noterepo;

  Color colorpicket = const Color(0xff4E598C);
  AddNoteCubit(this.noterepo) : super(AddNoteInitial());
  addnote(NoteModel note) {
    emit(AddNoteLoading());
    try {
      note.color = colorpicket.value;
      noterepo.addnotetohive(note: note);
      emit(AddNoteSuccess());
    } on Exception catch (e) {
      emit(AddNoteError(e.toString()));
    }
  }
}
