import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

import '../../../data/model/note_model.dart';
import '../../../data/repo/note_repo.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit(this.noterepo) : super(NotesInitial());
  final NoteRepo noterepo;

  void loadnotes() {
    try {
      List<NoteModel> notes =noterepo.loadnotefromhive();
      emit(NotesSuccess(notes));
    } catch (e) {
      emit(NotesError(e.toString()));
    }
  }
}
