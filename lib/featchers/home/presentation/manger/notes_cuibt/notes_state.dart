part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesSuccess extends NotesState {
 final List<NoteModel> notes;

  NotesSuccess(this.notes);
}

class NotesError extends NotesState {
  final String errormessage;

  NotesError(this.errormessage);
}
