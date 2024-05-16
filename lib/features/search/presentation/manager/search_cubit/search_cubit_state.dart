part of 'search_cubit_cubit.dart';

sealed class SearchCubitState extends Equatable {
  const SearchCubitState();

  @override
  List<Object> get props => [];
}

final class SearchCubitInitial extends SearchCubitState {}

final class SearchCubitSuccess extends SearchCubitState {
  final List<BookModel> books;

  const SearchCubitSuccess({required this.books});
}

final class SearchCubitFailure extends SearchCubitState {
  final String message;

  const SearchCubitFailure({required this.message});
}

final class SearchCubitLoading extends SearchCubitState {}
