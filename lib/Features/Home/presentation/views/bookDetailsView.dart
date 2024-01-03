import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/book_model/book_model.dart';
import 'widgets/boo_details_body/book_details_body.dart';

class BookDetailsView extends StatelessWidget {
  BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsBody(bookModel: bookModel),
    );
  }
}
