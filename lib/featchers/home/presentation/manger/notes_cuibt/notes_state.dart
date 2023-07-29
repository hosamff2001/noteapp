part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}
class NotesChangeSearchBar extends NotesState {}
class NotesSuccess extends NotesState {

}

class NotesError extends NotesState {
  final String errormessage;

  NotesError(this.errormessage);
}
