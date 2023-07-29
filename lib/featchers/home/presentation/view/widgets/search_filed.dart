
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constans.dart';
import '../../../../../core/utliz/stayles.dart';
import '../../manger/notes_cuibt/notes_cubit.dart';

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
                    FocusScopeNode currentFocus = FocusScope.of(context);

                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                    BlocProvider.of<NotesCubit>(context).loadnotes();
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
