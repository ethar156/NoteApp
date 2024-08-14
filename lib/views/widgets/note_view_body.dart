import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_note_item.dart';
import 'package:note_app/views/widgets/notes_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 16 ),
      child: Column(
        children: const [
          SizedBox(
           height: 50,
          ),
          CustomAppBar(),

          Expanded(child: NotesListView())
          
         ],
      ),
    );
  }
}

