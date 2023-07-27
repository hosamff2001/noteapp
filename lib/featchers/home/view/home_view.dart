import 'package:flutter/material.dart';

import '../../../core/widgets/custom_bootomstet.dart';
import 'widgets/homeviewbody.dart';

class HomeNoteView extends StatelessWidget {
  const HomeNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(8)),
            context: context,
            builder: (context) {
              return const CustomBottomShet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const SafeArea(child: HomeNoteViewBody()),
    );
  }
}
