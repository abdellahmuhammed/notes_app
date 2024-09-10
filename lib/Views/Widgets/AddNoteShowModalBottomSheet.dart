// ignore_for_file: file_names
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/AddNoteForm.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

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
          } else if (state is AddNoteFailureState) {
            debugPrint('failed when Add Note ${state.errorMessage}');
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoadingState ? true : false,
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: SingleChildScrollView(
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
