import 'package:flutter/material.dart';

class AddItemButton extends StatelessWidget {
  OutlinedBorder buttonShape;

  AddItemButton({required this.buttonShape});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(shape: buttonShape),
        onPressed: () {},
        child: Icon(Icons.add));
  }
}
