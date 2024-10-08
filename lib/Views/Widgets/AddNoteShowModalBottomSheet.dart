// ignore_for_file: file_names
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/AddNoteForm.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';

class AddNoteShowModalBottomSheet extends StatelessWidget {
  const AddNoteShowModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccessfullyState) {
            Navigator.pop(context);
            BlocProvider.of<NotesCubit>(context).fetchNotes();

          } else if (state is AddNoteFailureState) {
            debugPrint('failed when Add Note ${state.errorMessage}');
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoadingState ? true : false,
            child:  Padding(
              padding: EdgeInsets.only(left: 24, right: 16 ,
                 bottom: MediaQuery.of(context).viewInsets.bottom),
              child:const SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: AddNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
