import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utliz/serveslocated.dart';
import '../../../../core/widgets/custom_bootomstet.dart';
import '../../data/repo/note_repoimpl.dart';
import '../manger/add_note_cubit/add_note_cubit.dart';
import 'widgets/homeviewbody.dart';

class HomeNoteView extends StatelessWidget {
  const HomeNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            useRootNavigator: true,
            isScrollControlled: true,
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(8)),
            context: context,
            builder: (context) {
              return BlocProvider(
                create: (context) => AddNoteCubit(getIt.get<NoteRepoImpl>()),
                child:  const CustomBottomSheet(),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const SafeArea(child: HomeNoteViewBody()),
    );
  }
}
