import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class ListViewOfBooks extends StatelessWidget {
  const ListViewOfBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CustomBookImage();
        },
        // itemCount: 10,
      ),
    );
  }
}
