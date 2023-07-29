import 'package:hive_flutter/adapters.dart';

import '../../../../constans.dart';
import '../model/note_model.dart';
import 'note_repo.dart';

class NoteRepoImpl implements NoteRepo {
  @override
  void addnotetohive({required NoteModel note}) async {
    var notebox = Hive.box<NoteModel>(kNoteBox);

    await notebox.add(note);
  }

  @override
  void editnotetohive({required NoteModel note}) {}

  @override
  List<NoteModel> loadnotefromhive() {
    var notebox = Hive.box<NoteModel>(kNoteBox);

    return notebox.values.toList();
  }

  @override
  List<NoteModel> searchinhive({required String title}) {
    var notebox = Hive.box<NoteModel>(kNoteBox);
    return notebox.values.where((element) => element.title.contains(title) ).toList();
  }
}
