import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/notes_list_view.dart';
import '../../cubit/notes_cubit/notes_cubit.dart';


class NoteViewBody extends StatefulWidget {
  const NoteViewBody({
    super.key,
  });

@override
State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
  @override
  void initState(){
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
      super.initState();
  }
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 24 ),
      child: Column(
        children: const [
          SizedBox(
           height: 50,
          ),
          CustomAppBar(
            title: 'Note',
            icon: Icons.search,
          ),

          Expanded(child: NotesListView())
          
         ],
      ),
    );
  }

}
