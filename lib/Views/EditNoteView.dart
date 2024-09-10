// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:notes_app/Shared/component.dart';
import 'package:notes_app/Views/Widgets/EditBodyNoteView.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = 'Edit Note View';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:customAppBar(title: 'Edit Note' , icon: Icons.check_circle_outlined) ,
      body:const EditBodyNoteView(),
    );
  }
}
