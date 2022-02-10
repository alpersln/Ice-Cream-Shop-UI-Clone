import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          fillColor: Colors.grey[200],
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none),
          prefixIcon: Icon(Icons.search),
          hintText: "Search",
          suffixIcon: ElevatedButton(
            onPressed: () {},
            child: Icon(Icons.sync_alt),
          )),
    );
  }
}
