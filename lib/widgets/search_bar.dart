import 'package:flutter/material.dart';

class IGSearchBar extends StatelessWidget {
  const IGSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          ),
          prefixIcon: Icon(Icons.search),
          hintText: 'Search',
          contentPadding: EdgeInsets.zero,
          fillColor: Colors.grey[200],
          filled: true,
        ),
      ),
    );
  }
}
