import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'package:note_app/views/note_view.dart';
import 'package:note_app/views/widgets/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async  {
  await Hive.initFlutter();


  Bloc.observer = SimpleBlocObserver();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
       BlocProvider(create: (context) => AddNoteCubit(),
        ),
       ],
  child: MaterialApp(
        debugShowCheckedModeBanner: false,  
        theme: ThemeData(
          fontFamily: 'Poppins',
          brightness: Brightness.dark),
        home:const  NoteView(),
      ),
    );
  }
}
