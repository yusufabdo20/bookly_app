import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo_implementation.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitialState());
  static FeaturedBooksCubit get(context) => BlocProvider.of(context);
  final HomeRepo homeRepo;
  List<BookModel> bookModels = [];
  feachFeaturedBooks() async {
    emit(FeaturedBooksLoadingState());
    try {
      var result = await homeRepo.fetchFeaturedBooks();
      result.fold((error) {
        emit(FeaturedBooksErrorState(error.errMessage));
      }, (books) {
        bookModels = books;
        emit(FeaturedBooksSuccessState(books));
      });
    } on Exception catch (e) {
      // TODO
    }
  }
}
