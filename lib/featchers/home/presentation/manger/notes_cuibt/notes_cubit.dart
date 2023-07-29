import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

import '../../../data/model/note_model.dart';
import '../../../data/repo/note_repo.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit(this.noterepo) : super(NotesInitial());
  final NoteRepo noterepo;
  bool issearch = false;
  List<NoteModel> notes=[];

  void loadnotes() {
    try {
       notes = noterepo.loadnotefromhive();
      emit(NotesSuccess());
    } catch (e) {
      emit(NotesError(e.toString()));
    }
  }

  void changetosearch() {
    issearch = !issearch;
    emit(NotesChangeSearchBar());
  }

   void search(String title) {
  
    try {
       notes = noterepo.searchinhive(title: title);
      emit(NotesSuccess());
    } catch (e) {
      emit(NotesError(e.toString()));
    }
  }
}
