import 'package:bookly_app/core/widgets/custom_erorr_message.dart';
import 'package:bookly_app/core/widgets/custom_loading.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured__list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .134,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              //itemCount: 10,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: FeatureListViewItem(
                    imageurl:
                        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.gettyimages.com%2Fphotos%2Fbooks&psig=AOvVaw1jucGB_ggkpTeXGjkmEfCC&ust=1713910379328000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCNDF9evr1oUDFQAAAAAdAAAAABAE',
                  ),
                );
              },
            ),
            //child: CustomListView())],
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErorrMessage(
            errorMessage: state.errormessage,
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
