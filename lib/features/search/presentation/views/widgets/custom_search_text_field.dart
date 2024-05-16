import 'package:bookly_app/features/search/presentation/manager/search_cubit/search_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  CustomSearchTextField({super.key, this.onChanged});

  final textController = TextEditingController();
  final textKey = GlobalKey<FormState>();
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: textKey,
      child: TextFormField(
        onChanged: onChanged,
        controller: textController,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Field is required';
          }
        },
        onFieldSubmitted: (value) {
          if (textKey.currentState!.validate()) {
            BlocProvider.of<SearchCubit>(context)
                .fetchSearchedBooks(searchedBook: value);
            textController.clear();
          }
        },
        decoration: InputDecoration(
          hintText: 'Search',
          suffixIcon: IconButton(
            onPressed: () {
              if (textKey.currentState!.validate()) {
                BlocProvider.of<SearchCubit>(context)
                    .fetchSearchedBooks(searchedBook: textController.text);
                textController.clear();
              }
            },
            icon: const Opacity(
              opacity: 0.5,
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 18,
              ),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            // borderSide: BorderSide(
            //   color: Colors.grey.shade300,
            // ),
          ),
        ),
      ),
    );
  }
}
