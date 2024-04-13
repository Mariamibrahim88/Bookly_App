import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Column(
        children: [
          CustomDetailsBookAppBar(),
        ],
      ),
    );
  }
}

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
