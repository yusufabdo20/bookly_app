import 'package:flutter/material.dart';

import '../../../../data/models/book_model/book_model.dart';

class BookDetailsInformationSection extends StatelessWidget {
  const BookDetailsInformationSection({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          bookModel.volumeInfo?.title ?? "No title available",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          bookModel.volumeInfo?.authors![0] ?? "No Author available",
          style: TextStyle(
              fontSize: 18, color: Colors.grey, fontStyle: FontStyle.italic),
        ),
        SizedBox(
          height: 30,
        ),
        // BookRating(ratting: bookModel),
      ],
    );
  }
}
