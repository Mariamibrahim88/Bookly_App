import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/widgets.dart';

import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Search Results',
            style: styles.textStyle18,
          ),
          const SizedBox(
            height: 25,
          ),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
