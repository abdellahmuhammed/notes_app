// ignore_for_file: depend_on_referenced_packages

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Shared/Constant.dart';
import 'package:notes_app/models/NoteModel.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitialState());

  addNote(NoteModel noteModel) async {
    emit(AddNoteLoadingState());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
       await noteBox.add(noteModel);
      log('Add note Added Successfully');
      emit(AddNoteSuccessfullyState());
    } on Exception catch (error) {
      emit(AddNoteFailureState(errorMessage: error.toString()));
      throw Exception(
          'there was error happened When creating Note ${error.toString()}');
    }
  }
}
