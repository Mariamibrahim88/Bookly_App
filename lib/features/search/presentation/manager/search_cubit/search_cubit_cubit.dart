import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_cubit_state.dart';

class SearchCubitCubit extends Cubit<SearchCubitState> {
  SearchCubitCubit(this.searchRepo) : super(SearchCubitInitial());

  final SearchRepo searchRepo;

  Future<void> fetchSearchedBooks({required String searchedBook}) async {
    emit(SearchCubitLoading());

    var result =
        await searchRepo.fetchSearchedBooks(searchedBook: searchedBook);

    result.fold((failure) {
      emit(SearchCubitFailure(message: failure.message));
    }, (books) {
      emit(SearchCubitSuccess(books: books));
    });
  }
}
