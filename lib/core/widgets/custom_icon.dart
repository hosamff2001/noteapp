// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
   const CustomIcon({super.key, this.icon = Icons.search,required this.onTap});
  final IconData icon;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12)),
        width: 40,
        height: 40,
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
