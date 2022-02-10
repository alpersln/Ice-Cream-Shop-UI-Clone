import 'package:flutter/material.dart';

import '../utils/constants.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          fillColor: textFieldFillColor,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none),
          prefixIcon: const Icon(Icons.search),
          hintText: texFieldHintText,
          suffixIcon: ElevatedButton(
            onPressed: () {},
            child: const Icon(Icons.sync_alt),
          )),
    );
  }
}
