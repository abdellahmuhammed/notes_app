import 'package:flutter/material.dart';
import 'package:notes_app/Shared/Widgets/NotesItem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(16),
      itemCount: 5,
      itemBuilder: (context, index) => const NotesItem(),
      separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 8,),
    );
  }
}
