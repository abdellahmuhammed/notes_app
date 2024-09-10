part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitialState extends AddNoteState {}
final class AddNoteLoadingState extends AddNoteState {}
final class AddNoteSuccessfullyState extends AddNoteState {}
final class AddNoteFailureState extends AddNoteState {
  final String? errorMessage;

  AddNoteFailureState({this.errorMessage});
}
