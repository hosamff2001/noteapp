import 'package:flutter/material.dart';

import 'widgets/homeviewbody.dart';

class HomeNoteView extends StatelessWidget {
  const HomeNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: HomeNoteViewBody()),);
  }
}