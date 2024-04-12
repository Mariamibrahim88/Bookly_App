import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_book_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      //shrinkWrap: true, //takes the height of the children
      physics: const NeverScrollableScrollPhysics(), //to disable scrolling
      itemCount: 10,
      //scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BestSellerBookItem(),
        );
      },
    );
  }
}
