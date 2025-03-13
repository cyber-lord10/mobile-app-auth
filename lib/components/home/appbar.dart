import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(
        Icons.settings_outlined,
        size: 30,
      ),
      title: Text(
        'H o m e',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
      actions: [
        Icon(
          Icons.search_outlined,
          size: 30,
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.question_mark,
          size: 30,
        ),
        SizedBox(
          width: 10,
        ),
      ],
      centerTitle: true,
      backgroundColor: Colors.deepPurpleAccent,
      foregroundColor: Colors.white,
    );
  }
}
