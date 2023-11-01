import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchNewstBooks();
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
}
