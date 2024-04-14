import 'package:flutter/material.dart';

class CustomDetailsBookAppBar extends StatelessWidget {
  const CustomDetailsBookAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.close),
        Spacer(),
        Icon(Icons.shopping_cart_outlined),
      ],
    );
  }
}
