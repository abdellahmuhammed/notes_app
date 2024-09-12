// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Shared/component.dart';
import 'package:notes_app/Views/Widgets/CustomMaterialButton.dart';
import 'package:notes_app/Views/Widgets/CustomTextFormField.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/NoteModel.dart';

class EditBodyNoteView extends StatefulWidget {
  const EditBodyNoteView({super.key, required this.noteModel});

  final NoteModel noteModel;

  @override
  State<EditBodyNoteView> createState() => _EditBodyNoteViewState();
}

class _EditBodyNoteViewState extends State<EditBodyNoteView> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CustomTextFormField(
            label: widget.noteModel.title,
            onChanged: (value){
              title = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            label: widget.noteModel.subTitle,
            maxLines: 8,
            keyboardType: TextInputType.multiline,
              onChanged: (value){
                subTitle = value;
              }
          ),
          const SizedBox(
            height: 30,
          ),
          CustomMaterialButton(
              text: 'Edit',
              onTap: () {
                widget.noteModel.title =  title ?? widget.noteModel.title;
                widget.noteModel.subTitle =  subTitle ?? widget.noteModel.subTitle;
                widget.noteModel.save();
                BlocProvider.of<NotesCubit>(context).fetchNotes();
                buildScaffoldMessage(context, message: 'Updated Successfully');
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
