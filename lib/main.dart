import 'package:flutter/material.dart';
import 'package:notes_app/Shared/themes.dart';
import 'package:notes_app/Views/EditNoteView.dart';
import 'package:notes_app/Views/NotesView.dart';
import 'package:notes_app/Widgets/EditBodyNoteView.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkThem(),
      routes: {
        NotesView.id: (context) => const NotesView(),
        EditNoteView.id: (context) => const EditNoteView(),
      },
      initialRoute: NotesView.id,
    );
  }
}
