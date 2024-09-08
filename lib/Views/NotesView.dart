// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/NoteFloatingActionButton.dart';
import 'package:notes_app/Widgets/NoteViewBody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static String id = 'Home Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: noteViewAppBar(),
      floatingActionButton:const NoteFloatingActionButton(),
      body: const NoteViewBody(),
    );
  }
}


AppBar noteViewAppBar() {
  return AppBar(
    title: const Padding(
      padding: EdgeInsets.only(left: 16),
      child: Text('Samoan Notes'),
    ),
    centerTitle: false,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 24),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      )
    ],
  );
}
