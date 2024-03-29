import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';


import '../../featchers/home/data/model/note_model.dart';
import '../../featchers/home/presentation/view/home_view.dart';
import '../../featchers/home/presentation/view/note_edit_view.dart';


abstract class AppRouter {
  static String kstartview = "/";
  static String keditview = "/edit";
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kstartview,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeNoteView();
        },
      ),
      GoRoute(
        path: keditview,
        
        builder: (BuildContext context, GoRouterState state) {
          return  NoteEditView(note:state.extra as NoteModel);
        },
      ),
    ],
  );
}
