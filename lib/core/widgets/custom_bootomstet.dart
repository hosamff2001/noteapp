import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../featchers/home/presentation/manger/cubit/add_note_cubit.dart';
import 'custom_note_form.dart';

class CustomBottomShet extends StatelessWidget {
  const CustomBottomShet({super.key});

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
              GoRouter.of(context).pop();
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
