import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'constans.dart';
import 'core/utliz/routers.dart';
import 'core/utliz/serveslocated.dart';
import 'core/utliz/simpleblocobserver.dart';
import 'featchers/home/data/model/note_model.dart';
import 'featchers/home/data/repo/note_repoimpl.dart';
import 'featchers/home/presentation/manger/notes_cuibt/notes_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(getIt.get<NoteRepoImpl>())..loadnotes(),
      child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark()),
    );
  }
}
