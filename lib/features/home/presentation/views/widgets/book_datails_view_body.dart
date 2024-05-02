import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/button_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_datails_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured__list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'similar_book_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false, // dont scroll the body
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomDetailsBookAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                  child: FeatureListViewItem(
                    imageurl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  bookModel.volumeInfo.title!,
                  style:
                      styles.textStyle30.copyWith(fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 7),
                Opacity(
                  opacity: 0.7,
                  child: Text(bookModel.volumeInfo.authors![0],
                      style: styles.textStyle16),
                ),
                const SizedBox(height: 10),
                const BookRating(mainAxisAlignment: MainAxisAlignment.center),
                const SizedBox(height: 25),
                const BookAction(),
                const Expanded(child: SizedBox(height: 30)),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'You can also like',
                    style: styles.textStyle14
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                const SimilarBookListView(),
                const Expanded(child: SizedBox(height: 30)),
              ],
            ),
          ),
        )
      ],
    );
  }
}
