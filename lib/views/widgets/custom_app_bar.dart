import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_search_bar.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Notes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ), 
        Spacer(),
        CustomSearchBar(),
        
      ],
    );
  }
}
