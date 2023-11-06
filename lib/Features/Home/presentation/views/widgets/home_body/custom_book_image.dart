import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  CustomBookImage({
    Key? key,
    required this.image,
  }) : super(key: key);
  String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .30,
      margin: EdgeInsets.all(10),
      width: 150,
      child: AspectRatio(
          aspectRatio: .65,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CachedNetworkImage(
              placeholder: (context, url) => Center(
                  child: Image.asset(
                      "assets/images/Animation - 1699310838447.gif")),
              errorWidget: (context, url, error) {
                return const Icon(Icons.error);
              },
              fit: BoxFit.fill,
              imageUrl: image,
            ),
          )

          //  Container(
          //   margin: const EdgeInsets.symmetric(horizontal: 10),
          //   // width: 150,
          //   // height: MediaQuery.of(context).size.height * .25,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.all(
          //       Radius.circular(20),
          //     ),
          //     image: DecorationImage(
          //       image: NetworkImage(image),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          ),
    );
  }
}
