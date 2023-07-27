
import 'package:get_it/get_it.dart';

import '../../featchers/home/data/repo/note_repoimpl.dart';




GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<NoteRepoImpl>(NoteRepoImpl());
 
}
