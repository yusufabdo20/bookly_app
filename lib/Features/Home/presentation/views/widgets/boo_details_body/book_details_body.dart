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
      child: Column(
        children: [
          const CustomAppBarBookDetails(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.17),
            child:const CustomBookImage(),
          )
        ],
      ),
    );
  }
}
