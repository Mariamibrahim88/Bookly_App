import 'package:bookly_app/core/widgets/customButton.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            backgroundColor: Colors.white,
            TextColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            text: '19.99€',
            fontSize: 18,
          ),
        ),
        //SizedBox(width: 20),
        Expanded(
          child: CustomButton(
            backgroundColor: Color(0xFFEF8262),
            TextColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            text: 'Free preview',
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
