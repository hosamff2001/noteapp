import 'package:flutter/material.dart';

import '../../../../core/utliz/stayles.dart';

class NoteCardItem extends StatelessWidget {
  const NoteCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        padding: const EdgeInsets.only(top: 7, bottom: 17, right: 16, left: 8),
        decoration: BoxDecoration(
            color: const Color(0xffffcc80), borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                  )),
              title: Text(
                "Flutter Tips",
                style: Styles.textStyle18.copyWith(color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Build Your Note ",
                  style: Styles.textStyle14
                      .copyWith(color: Colors.black.withOpacity(0.4)),
                ),
              ),
            ),
            Text(
              "12 May /2023",
              style: Styles.textStyle14.copyWith(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
