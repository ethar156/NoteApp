import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

import 'colors_list_view.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(children: [
        const SizedBox(
          height: 32,
        ),

          
        CustomTextField(
          onSaved: (value) {
            title = value;
          },
          hint: 'Title',
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextField(
          onSaved: (value) {
            subtitle = value;
          },
          hint: 'content',
          maxLines: 5,
        ),
        const SizedBox(
          height: 32,
        ),
        const ColorsListView(),
        const SizedBox(
          height: 32,
        ),
        BlocBuilder<AddNoteCubit, AddNoteState>(
          builder: (context, state) {
            return CustomButton(
              isLoading: state is AddNoteLoading ? true: false,
              onTap: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
                  var currentDate = DateTime.now();
                  var formmattedcurrentDate = DateFormat('dd-mm-yyyy').format(currentDate);

                  var noteModel = NoteModel(
                      title: title!,
                      subtitle: subtitle!,
                      date: formmattedcurrentDate,
                      color: Colors.blue.value);
                  BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            );
          },
        ),
        const SizedBox(
          height: 16,
        ),
      ]),
    );
  }
}


