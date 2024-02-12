part of 'add_notes_cubit.dart';

@immutable
sealed class AddNotesState {}

final class AddNotesInitial extends AddNotesState {}

class AddNoteLoadingState extends AddNotesState {}

class AddNoteSuccessState extends AddNotesState {}

class AddNoteFailureState extends AddNotesState {
  final String errMessage;

  AddNoteFailureState(this.errMessage);
}
