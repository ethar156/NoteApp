import 'package:flutter/material.dart';
import 'package:note_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/views/widgets/add_note_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/notes_cubit/notes_cubit.dart';

class AddNoteBottomSheet extends StatefulWidget {
  AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print('failed ${state.errmessage}');
          }
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
                  padding:  EdgeInsets.only(
                     left:  16,
                     right: 16,
                     bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: const SingleChildScrollView(
                    child: AddNoteForm(),
                  ),
            ),
          );
        },
      ),
    );
  }
}
