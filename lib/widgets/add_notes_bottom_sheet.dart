import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'add_note_bottom_sheet_form.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    // use BlocCondumer here to access AddNotesStates and use them
    return BlocConsumer<AddNotesCubit, AddNotesState>(
      listener: (context, state) {
        if (state is AddNoteFailureState) {
          print('failed => ${state.errMessage}');
        }
        if (state is AddNoteSuccessState) {
          Navigator.pop(context);
        }
      }, //code is writeing in listner attribute.
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is AddNoteLoadingState ? true : false,
            child: const AddNotesForm());
      },
    );
  }
}
