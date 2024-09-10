// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:notes_app/Shared/component.dart';
import 'package:notes_app/Views/Widgets/NoteFloatingActionButton.dart';
import 'package:notes_app/Views/Widgets/NoteViewBody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static String id = 'Home Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Samoan Notes'),
      floatingActionButton:const NoteFloatingActionButton(),
      body: const NoteViewBody(),
    );
  }
}


