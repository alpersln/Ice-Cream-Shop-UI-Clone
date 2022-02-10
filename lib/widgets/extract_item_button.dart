import 'package:flutter/material.dart';

class ExtractItemButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder()),
        onPressed: () {},
        child: Icon(Icons.remove));
  }
}
