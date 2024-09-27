part of 'similar_books_cubit_cubit.dart';

sealed class SimilarBooksCubitState extends Equatable {
  const SimilarBooksCubitState();

  @override
  List<Object> get props => [];
}

class SimilarBooksCubitInitial extends SimilarBooksCubitState {}

class SimilarBooksFailure extends SimilarBooksCubitState {
  final String errMessage;

  const SimilarBooksFailure(this.errMessage);
}

class SimilarBooksSuccess extends SimilarBooksCubitState {
  final List<BookModel> books;

  const SimilarBooksSuccess(this.books);
}

class SimilarBooksLoading extends SimilarBooksCubitState {}
