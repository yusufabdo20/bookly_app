import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitialState());
  static NewestBooksCubit get(context) => BlocProvider.of(context);
  HomeRepo homeRepo;
  List<BookModel> bookModels = [];
  fetchNewstBooks() async {
    emit(NewestBooksLoadingState());
    var result = await homeRepo.fetchNewstBooks();
    result.fold(
        //l for error
        (l) => emit(
              NewestBooksErrorState(error: l.errMessage),
            ), (r) {
      // r foe list of book model
      bookModels = r;
      emit(NewestBooksSuccessState());
    });
  }
}
