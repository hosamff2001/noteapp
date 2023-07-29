import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/featchers/home/presentation/manger/notes_cuibt/notes_cubit.dart';

import '../../../../../constans.dart';
import '../../../../../core/utliz/stayles.dart';
import '../../../../../core/widgets/custom_icon.dart';

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

class SearchTextFormFiled extends StatelessWidget {
  const SearchTextFormFiled({super.key, this.onChange});
  final void Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.65,
        height: 40,
        child: TextFormField(
          onChanged: onChange,
          cursorColor: kPrimaryColor,
          decoration: InputDecoration(
              enabledBorder: borderdecoration(kPrimaryColor),
              focusedBorder: borderdecoration(kPrimaryColor),
              hintText: "Search For ?",
              hintStyle: Styles.textStyle14,
              suffixIcon: IconButton(
                  onPressed: () {
                    BlocProvider.of<NotesCubit>(context).changetosearch();
                  },
                  icon: const Icon(
                    Icons.backspace_rounded,
                    size: 20,
                    color: kPrimaryColor,
                  )),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(14))),
        ));
  }

  OutlineInputBorder borderdecoration([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
