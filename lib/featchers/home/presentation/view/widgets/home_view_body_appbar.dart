import 'package:flutter/material.dart';

import '../../../../../core/utliz/stayles.dart';
import '../../../../../core/widgets/custom_icon.dart';

class HomeNoteViewbodyAppBar extends StatelessWidget {
  const HomeNoteViewbodyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
          children: [
            const Text(
              "Note",
              style: Styles.textStyle24,
            ),
            const Spacer(),
            CustomIcon(onTap: (){}),
          ],
        );
  }
}