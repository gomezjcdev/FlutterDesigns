import 'package:flutter/material.dart';
import 'package:pet_app/themes/theme.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(0),
        filled: true,
        prefixIcon: const Align(
          widthFactor: 1.0,
          heightFactor: 1.0,
          child: Icon(Icons.search, color: Colors.black),
        ),
        hintText: 'Search pet to adopt',
        hintStyle: TextStyle(color: AppTheme.hintText, fontWeight: FontWeight.w600),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
