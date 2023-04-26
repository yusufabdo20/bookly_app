import 'package:bookly_app/Features/Home/presentation/views/widgets/boo_details_body/bookAction.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/home_body/book_rating.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/home_body/custom_book_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customAppBarBookDetails.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
            const Text(
              "The Jungle Book ",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            const Text(
              "The Jungle Book ",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontStyle: FontStyle.italic),
            ),
              const SizedBox(
              height: 30,
            ),
            const BookRating(),
            const SizedBox(
              height: 30,
            ),
            const BookAction(),
          ],
        ),
      ),
    );
  }
}
