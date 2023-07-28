import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/featchers/home/presentation/manger/notes_cuibt/notes_cubit.dart';
import '../../featchers/home/presentation/manger/add_note_cubit/add_note_cubit.dart';
import 'custom_note_form.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 16.0,
          right: 16,
          top: 12,
          bottom: MediaQuery.viewInsetsOf(context).bottom + 12),
      child: SingleChildScrollView(
        child: BlocBuilder<AddNoteCubit, AddNoteState>(
          builder: (context, state) {
            if (state is AddNoteLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is AddNoteSuccess) {
              FocusScopeNode currentFocus = FocusScope.of(context);

              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
              BlocProvider.of<NotesCubit>(context).loadnotes();
              if (Navigator.of(context).canPop()) {
                Navigator.of(context).pop();
              }
            } else if (state is AddNoteError) {
              debugPrint("faild in ${state.errormessage}");
            }

            return const AddNoteForm();
          },
        ),
      ),
    );
  }
}
