import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() {
    // emit(NotesLoadingState());   NotesLoadingState  is not required because the data is inside the box and we no have to wait it .

    var notesBox = Hive.box<NoteModel>(kNotesBox);
    List<NoteModel> notes = notesBox.values.toList();
    print('notes list from succes $notes');
    emit(NotesSuccessState(notes));
    return notes;
  }
}
