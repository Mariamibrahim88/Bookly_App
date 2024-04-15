import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/button_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_datails_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'similar_book_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

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
                  child: const FeatureListViewItem(),
                ),
                const SizedBox(height: 45),
                Text('The Jungle Book',
                    style: styles.textStyle30
                        .copyWith(fontWeight: FontWeight.w500)),
                const SizedBox(height: 7),
                const Opacity(
                  opacity: 0.7,
                  child: Text('Rudyard Kipling', style: styles.textStyle18),
                ),
                const SizedBox(height: 16),
                const BookRating(mainAxisAlignment: MainAxisAlignment.center),
                const SizedBox(height: 37),
                const BookAction(),
                const Expanded(child: const SizedBox(height: 50)),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'You can also like',
                    style: styles.textStyle14
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 16),
                const SimilarBookListView(),
                const Expanded(child: SizedBox(height: 40)),
              ],
            ),
          ),
        )
      ],
    );
  }
}
