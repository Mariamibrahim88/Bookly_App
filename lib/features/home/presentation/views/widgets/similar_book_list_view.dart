import 'package:bookly_app/features/home/presentation/views/widgets/featured__list_view_item.dart';
import 'package:flutter/material.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .134,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        //itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: FeatureListViewItem(
              imageurl:
                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.gettyimages.com%2Fphotos%2Fbooks&psig=AOvVaw1jucGB_ggkpTeXGjkmEfCC&ust=1713910379328000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCNDF9evr1oUDFQAAAAAdAAAAABAE',
            ),
          );
        },
        //child: CustomListView())],
      ),
    );
  }
}
