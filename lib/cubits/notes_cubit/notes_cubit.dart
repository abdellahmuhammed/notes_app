import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Shared/Constant.dart';
import 'package:notes_app/models/NoteModel.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitialState());

 List<NoteModel>? notesList ;
  fetchNotes() {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
       notesList = noteBox.values.toList();
      debugPrint('fetch Notes successfully');
  }
}
