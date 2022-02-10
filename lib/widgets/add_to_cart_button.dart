import 'package:flutter/material.dart';

import '../utils/constants.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 60)),
      onPressed: () {},
      child: Text(addToCartText),
    );
  }
}
