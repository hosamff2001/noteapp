import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:noteapp/featchers/home/view/note_edit_view.dart';

import '../../featchers/home/view/home_view.dart';

abstract class AppRouter {
  static String keditview = "/edit";
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeNoteView();
        },
      ),
      GoRoute(
        path: keditview,
        builder: (BuildContext context, GoRouterState state) {
          return const NoteEditView();
        },
      ),
    ],
  );
}
