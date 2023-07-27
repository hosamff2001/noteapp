import 'package:hive_flutter/adapters.dart';


import '../../../../constans.dart';
import '../model/note_model.dart';
import 'note_repo.dart';

class NoteRepoImpl implements NoteRepo {
  @override
  void addnotetohive({required NoteModel note}) async{
    var notebox = Hive.box<NoteModel>(kNoteBox);
    await notebox.add(note);
  }

  @override
  void editnotetohive({required NoteModel note}) {
    // TODO: implement editnotetohive
  }

}