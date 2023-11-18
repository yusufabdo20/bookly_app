import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';

class BestSellerListViewItemInformation extends StatelessWidget {
  BestSellerListViewItemInformation({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            bookModel.volumeInfo?.title ?? "No title available",
            style: const TextStyle(
              fontSize: 25,
            ),
            textAlign: TextAlign.start,
            maxLines: 2,
            // overflow: TextOverflow.ellipsis,
          ),
          Text(
            bookModel.volumeInfo?.authors?[0] ?? "No Author available",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            textAlign: TextAlign.start,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "free",
                style: TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              BookRating(
                  ratting: bookModel.volumeInfo?.averageRating ?? 0,
                  ratingsCount: bookModel.volumeInfo?.ratingsCount ?? 0),
            ],
          )
        ],
      ),
    );
  }
}
