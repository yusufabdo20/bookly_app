import 'package:bookly_app/Features/Home/presentation/views/widgets/boo_details_body/bookAction.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/boo_details_body/similar_books_listView.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/home_body/custom_book_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'book_details_information.dart';
import 'customAppBarBookDetails.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const CustomAppBarBookDetails(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.17),
                    child: const CustomBookImage(),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const BookDetailsInformationSection(),
                  const SizedBox(
                    height: 30,
                  ),
                  const BookAction(),
                  const SizedBox(
                    height: 30,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "You can also like",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const SimilarBooksListView()
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
