import 'package:bookly_app/core/widgets/custom_loading.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_book_item.dart';
import 'package:bookly_app/features/search/presentation/manager/search_cubit/search_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_erorr_message.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchCubitState>(
        builder: (context, state) {
      if (state is SearchCubitSuccess) {
        return ListView.builder(
          padding: EdgeInsets.zero,
          //shrinkWrap: true, //takes the height of the children
          physics: const BouncingScrollPhysics(), //to disable scrolling
          itemCount: state.books?.length ?? 0,
          //scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: BestSellerBookItem(
                bookModel: state.books[index],
              ),
            );
          },
        );
      } else if (state is SearchCubitFailure) {
        return CustomErorrMessage(
          errorMessage: state.message,
        );
      } else {
        return const Center(child: CustomLoadingIndicator());
      }
    });
  }
}
