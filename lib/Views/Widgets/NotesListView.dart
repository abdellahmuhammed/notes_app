// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/NotesItem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: NotesItem(),
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
    );
  }
}
