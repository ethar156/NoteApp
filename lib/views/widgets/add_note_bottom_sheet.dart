import 'package:flutter/material.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

       width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        children: [Text('hello')],
      ),
    );
  }
}