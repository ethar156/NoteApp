import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/constants.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1, this.onSaved,  this.onChanged});

  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;

  final void Function(String)? onChanged;
  
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value){
        if (value?.isEmpty ?? true) {
          return 'field is required';
          }else{
            return null;
          }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
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
            color:  Colors.white,
          ));


     

  }
}