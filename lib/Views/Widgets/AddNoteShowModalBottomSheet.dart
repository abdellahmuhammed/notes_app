// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/AddNoteForm.dart';


class AddNoteShowModalBottomSheet extends StatelessWidget {
  const AddNoteShowModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: SingleChildScrollView(
        child:AddNoteForm(),
      ),
    );
  }
}
