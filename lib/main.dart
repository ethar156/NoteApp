import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/views/note_view.dart';
import 'package:note_app/views/widgets/constants.dart';

void main() async  {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  
      theme: ThemeData(
        fontFamily: 'Poppins',
        brightness: Brightness.dark),
      home:const  NoteView(),
    );
  }
}
