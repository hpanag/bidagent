import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final AppBar appBar;
  const AppBarCustom({super.key, required this.title, required this.appBar});

  @override
  Widget build(BuildContext context) {
    return AppBarCustom(
      title: title,
      appBar: appBar,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
