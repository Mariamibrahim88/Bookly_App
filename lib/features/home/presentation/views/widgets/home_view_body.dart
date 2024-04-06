import 'dart:ffi';

import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_book_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomAppBar(),
        FeaturedBooksListView(),
        SizedBox(height: 40),
        Text(
          'Best Sellers',
          style: styles.textStyle18,
        ),
        SizedBox(
          height: 20,
        ),
        BestSellerBookItem(),
      ]),
    );
  }
}

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
        const SizedBox(width: 20),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   'Harry Potter and the global of Fire',
            //   softWrap: true,
            //   //style: styles.titleMedium,
            // ),
          ],
        )
      ]),
    );
  }
}
