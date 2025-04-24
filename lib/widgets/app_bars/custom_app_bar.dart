import 'package:flutter/material.dart';
import 'package:quiz/constants/colors_app.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String name;
  const CustomAppBar({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsApp.backgroundColor,
      title: Text(
        name,
        style: TextStyle(
          color: ColorsApp.headerTextColor,
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
