import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bookly_app/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xFFFFDD4F),
        ),
        const SizedBox(width: 6.3),
        const Text(
          '4.8',
          style: styles.textStyle16,
        ),
        const SizedBox(width: 5),
        Text(
          '(2390)',
          style: styles.textStyle14.copyWith(color: Color(0xFF707070)),
        )
      ],
    );
  }
}
