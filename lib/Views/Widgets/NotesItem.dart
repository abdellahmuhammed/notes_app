// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/Shared/component.dart';
import 'package:notes_app/Views/EditNoteView.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/NoteModel.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({
    super.key,
    required this.noteModel,
  });

  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(EditNoteView.id);
      },
      child: Container(
        padding: const EdgeInsets.only(left: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(noteModel.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              trailing: IconButton(
                onPressed: () {
                  _buildDeleteIcon(context);
                },
                color: Colors.black,
                icon: const Icon(
                  Icons.delete,
                  size: 24,
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  noteModel.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              subtitle: Text(
                noteModel.subTitle,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24, top: 8, bottom: 24),
              child: Text(
                DateFormat('d-M-y  At h:m: a')
                    .format(DateTime.parse(noteModel.date)),
                style: Theme.of(context).textTheme.bodySmall,
              ),
            )
          ],
        ),
      ),
    );
  }

  void _buildDeleteIcon(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: const Text('Do you want to delete that ?'),
          actions: [
            ElevatedButton(
              onPressed: () {
                noteModel.delete();
                BlocProvider.of<NotesCubit>(context).fetchNotes();
                buildScaffoldMessage(context, message: 'Deleted successfully');
                Navigator.of(context).pop();
              },
              child: const Text('ok'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('cancel'),
            ),
          ],
        );
      },
    );
  }
}
