import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 46,
      decoration: BoxDecoration(
      color: Colors.white.withOpacity(.05),
      borderRadius: BorderRadius.circular(16)
      ),
      child: const Center(
        child: Icon(
          Icons.search,
          size: 28,
        ),
      ),
    );
  }
}