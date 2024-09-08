import 'package:flutter/material.dart';
import 'package:notes_app/Shared/Widgets/NotesListView.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static String id = 'Home Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: notesAppBar(),
      body: const NotesViewBody(),
    );
  }
}

AppBar notesAppBar() {
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
          style: const ButtonStyle(),
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      )
    ],
  );
}

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesListView();
  }
}
