import 'package:flutter/material.dart';

class BookDetailsInformationSection extends StatelessWidget {
  const BookDetailsInformationSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          "The Jungle Book ",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          "The Jungle Book ",
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
