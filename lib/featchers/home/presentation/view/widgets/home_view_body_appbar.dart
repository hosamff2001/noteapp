import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utliz/stayles.dart';
import '../../../../../core/widgets/custom_icon.dart';
import '../../manger/notes_cuibt/notes_cubit.dart';
import 'search_filed.dart';

class HomeNoteViewbodyAppBar extends StatelessWidget {
  const HomeNoteViewbodyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        return Row(
          children: [
            const Text(
              "Note",
              style: Styles.textStyle24,
            ),
            BlocProvider.of<NotesCubit>(context).issearch
                ? const SizedBox(
                    width: 20,
                  )
                : const Spacer(),
            BlocProvider.of<NotesCubit>(context).issearch
                ? Hero(
                    tag: "Search",
                    child: SearchTextFormFiled(
                      onChange: (value) {
                        BlocProvider.of<NotesCubit>(context).search(value);
                      },
                    ))
                : Hero(
                    tag: "Search",
                    child: CustomIcon(onTap: () {
                      BlocProvider.of<NotesCubit>(context).changetosearch();
                    }),
                  ),
          ],
        );
      },
    );
  }
}
