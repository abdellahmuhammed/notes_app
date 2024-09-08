import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/AddNoteShowModalBottomSheet.dart';
import 'package:notes_app/Widgets/NotesListView.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static String id = 'Home Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: noteAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            backgroundColor: const Color(0xFFB1B3A6),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            builder: (context) => const AddNoteShowModalBottomSheet(),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const NoteViewBody(),
    );
  }
}

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const NotesListView();
  }
}

AppBar noteAppBar() {
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
