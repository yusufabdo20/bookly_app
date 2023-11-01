part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitialState extends FeaturedBooksState {}

class FeaturedBooksLoadingState extends FeaturedBooksState {}

class FeaturedBooksSuccessState extends FeaturedBooksState {}

class FeaturedBooksErrorState extends FeaturedBooksState {
  final String e;
  FeaturedBooksErrorState(this.e);
}
//  class FeaturedBooks extends FeaturedBooksState {}
