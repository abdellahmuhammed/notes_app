// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/AddNoteShowModalBottomSheet.dart';

class NoteFloatingActionButton extends StatelessWidget {
  const NoteFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
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
    );
  }
}