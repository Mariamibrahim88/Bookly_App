import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_scroll_view.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/widgets.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Search Results',
            style: styles.textStyle18,
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      //shrinkWrap: true, //takes the height of the children
      //physics: const NeverScrollableScrollPhysics(), //to disable scrolling
      itemCount: 10,
      //scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          // child: BestSellerBookItem(),
          child: Text('data'),
        );
      },
    );
  }
}
