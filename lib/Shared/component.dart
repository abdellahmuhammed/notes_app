import 'package:flutter/material.dart';

AppBar customAppBar({required String title, IconData? icon}) {
  return AppBar(
    title: Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Text(title),
    ),
    centerTitle: false,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 24),
        child: IconButton(
          onPressed: () {},
          icon: Icon(icon),
        ),
      )
    ],
  );
}
