import 'package:flutter/material.dart';

import '../home_body/custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .18,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomBookImage(
            image:
                'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg',
          );
        },
        // itemCount: 10,
      ),
    );
  }
}
