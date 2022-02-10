import 'package:flutter/material.dart';

class StarIconWidget extends StatelessWidget {
  final int total;
  final int activated;

  const StarIconWidget({this.total = 5, this.activated = 4});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(total, (index) {
        var filled = index < activated;
        return Icon(
          filled ? Icons.star : Icons.star_border,
          color: Colors.yellow,
        );
      }).toList(),
    );
  }
}
