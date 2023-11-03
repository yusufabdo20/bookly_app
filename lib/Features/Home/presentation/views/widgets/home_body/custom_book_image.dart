import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  CustomBookImage({
    Key? key,
    required this.image,
  }) : super(key: key);
  String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: AspectRatio(
        aspectRatio: .65,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          // width: 150,
          // height: MediaQuery.of(context).size.height * .25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
