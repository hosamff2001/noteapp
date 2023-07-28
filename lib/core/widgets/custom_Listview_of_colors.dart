import 'package:flutter/material.dart';

import 'custom_Color.dart';

class ListViewColors extends StatefulWidget {
  const ListViewColors({super.key});

  @override
  State<ListViewColors> createState() => _ListViewColorsState();
}

class _ListViewColorsState extends State<ListViewColors> {
  int currentindex = 0;
  List<Color> colors = const [
    Color(0xff4E598C),
    Color(0xffFFFFFF),
    Color(0xffF9C784),
    Color(0xffFCAF58),
    Color(0xffFF8C42),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 48,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              currentindex = index;
              setState(() {});
            },
            child: ColorItem(
              color: colors[index],
              ispicket: index == currentindex,
            ),
          ),
        ));
  }
}
