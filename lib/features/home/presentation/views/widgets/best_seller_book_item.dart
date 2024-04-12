import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerBookItem extends StatelessWidget {
  const BestSellerBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      // width: 100,
      child: Row(children: [
        AspectRatio(
          aspectRatio: 3.2 / 4.5,
          child: Container(
            //width: MediaQuery.of(context).size.width * 0.40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              image: const DecorationImage(
                image: AssetImage(AssetsData.test),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.50,
                child: Text(
                  'Harry Potter and the global of Fire',
                  style: styles.textStyle20.copyWith(fontFamily: KGTSectraFine),
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  //style: styles.titleMedium,
                ),
              ),
              Text(
                'J.K. Rowling',
                style: styles.textStyle14.copyWith(color: Color(0xFF707070)),
              ),
              Row(
                children: [
                  Text(
                    '19.99 €',
                    style: styles.textStyle20
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  //const SizedBox(width: 36.3),
                  Spacer(),
                  BookRating(),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}

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
