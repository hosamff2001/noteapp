
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../../featchers/home/view/home_view.dart';



abstract class AppRouter {

  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeNoteView();
        },
      ),
     
    ],
  );
}
