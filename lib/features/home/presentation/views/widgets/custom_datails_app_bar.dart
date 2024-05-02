import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class CustomDetailsBookAppBar extends StatelessWidget {
  const CustomDetailsBookAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              GoRouter.of(context).pop();
            },
            child: Icon(Icons.close)),
        const Spacer(),
        const Icon(Icons.shopping_cart_outlined),
      ],
    );
  }
}
