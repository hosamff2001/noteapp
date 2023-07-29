import '../model/note_model.dart';

abstract class NoteRepo {
  void addnotetohive({required NoteModel note});
   void editnotetohive({required NoteModel note});
   List<NoteModel> loadnotefromhive();
   List<NoteModel> searchinhive({required String title});
}
