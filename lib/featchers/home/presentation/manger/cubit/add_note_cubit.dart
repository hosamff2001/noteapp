// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';

import '../../../data/model/note_model.dart';
import '../../../data/repo/note_repo.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  final NoteRepo noterepo;
  AddNoteCubit(this.noterepo) : super(AddNoteInitial());
  addnote(NoteModel note) {
    emit(AddNoteLoading());
    try {
      noterepo.addnotetohive(note: note);
      // emit(AddNoteSuccess());
    } on Exception catch (e) {
      emit(AddNoteError(e.toString()));
    }
  }
}
