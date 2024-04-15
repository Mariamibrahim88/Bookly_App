import 'package:bookly_app/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/cupertino.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: SearchViewBody());
  }
}
