// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Views/Widgets/NotesItem.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/NoteModel.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List <NoteModel> notes = BlocProvider.of<NotesCubit>(context).notesList ?? [];
        return ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemCount:notes.length,
          itemBuilder: (context, index) =>
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: NotesItem(),
          ),
          separatorBuilder: (context, index) =>
          const SizedBox(
            height: 10,
          ),
        );
      },
    );
  }
}
