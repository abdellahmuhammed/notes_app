import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Shared/Constant.dart';
import 'package:notes_app/models/NoteModel.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitialState());

  fetchNotes() {
    emit(NotesIsLoadingState());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);

      List<NoteModel> notesList = noteBox.values.toList();
      debugPrint('fetch Notes successfully${notesList.toString()}');

      emit(NotesSuccessState(notesList));
    } on Exception catch (error) {
      emit(NotesFailureState(error.toString()));
      throw Exception('oops there was error happened ${error.toString()}');
    }
  }
}
