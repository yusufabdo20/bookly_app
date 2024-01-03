// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'similer_books_cubit.dart';

abstract class SimilerBooksState extends Equatable {
  const SimilerBooksState();

  @override
  List<Object> get props => [];
}

class SimilerBooksInitial extends SimilerBooksState {}

class SimilerBooksSuccess extends SimilerBooksState {
  List<BookModel> bookModels;
  SimilerBooksSuccess({
    required this.bookModels,
  });
}

class SimilerBooksError extends SimilerBooksState {
  final String error;

  SimilerBooksError({required this.error});
}

class SimilerBooksLoading extends SimilerBooksState {}
