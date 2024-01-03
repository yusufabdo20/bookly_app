import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/book_model/book_model.dart';

part 'similer_books_state.dart';

class SimilerBooksCubit extends Cubit<SimilerBooksState> {
  SimilerBooksCubit(this.homeRepo) : super(SimilerBooksInitial());
  static SimilerBooksCubit get(context) => BlocProvider.of(context);
  HomeRepo homeRepo;
  List<BookModel> bookModels = [];
  fetchSimilerBooks({required String category}) async {
    emit(SimilerBooksLoading());
    var result = await homeRepo.fetchSimilerBooks(category: category);
    result.fold(
        //l for error
        (l) => emit(
              SimilerBooksError(error: l.errMessage),
            ), (r) {
      // r foe list of book model
      bookModels = r;
      emit(SimilerBooksSuccess(bookModels: bookModels));
    });
  }
}
