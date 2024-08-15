import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: const TextStyle(
          color: kPrimaryColor
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: kPrimaryColor),
         ),
    );
  }

       OutlineInputBorder  buildBorder({color}){
        return OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            8
            ),
          borderSide: const BorderSide(
            color: Colors.white,
          ));


     

  }
}