import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'cubit/add_note_cubit.dart';
import 'models/note_model.dart';
import 'simple_bloc_observer.dart';
import 'views/note_view.dart';
import 'views/widgets/constants.dart';
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
