// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'newest_books_cubit.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class NewestBooksInitialState extends NewestBooksState {}

class NewestBooksSuccessState extends NewestBooksState {}

class NewestBooksErrorState extends NewestBooksState {
  final String error;
  NewestBooksErrorState({
    required this.error,
  });
}

class NewestBooksLoadingState extends NewestBooksState {}
