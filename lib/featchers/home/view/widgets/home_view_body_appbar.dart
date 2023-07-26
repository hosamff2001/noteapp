import 'package:flutter/material.dart';

import '../../../../core/utliz/stayles.dart';
import '../../../../core/widgets/custom_icon.dart';

class HomeNoteViewbodyAppBar extends StatelessWidget {
  const HomeNoteViewbodyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
          children: [
            Text(
              "Note",
              style: Styles.textStyle24,
            ),
            Spacer(),
            CustomIcon(),
          ],
        );
  }
}