import 'package:flutter/material.dart';

class ExtractItemButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(shape: const RoundedRectangleBorder()),
        onPressed: () {},
        child: const Icon(Icons.remove));
  }
}
