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
      height: MediaQuery.of(context).size.height * .25,
      margin: EdgeInsets.only(right: 20),
      width: 150,
      child: AspectRatio(
          aspectRatio: .70,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CachedNetworkImage(
              imageUrl: image,
              placeholder: (context, url) => Center(
                  child: const Center(child: CircularProgressIndicator())),
              errorWidget: (context, url, error) => Image.asset(
                "assets/images/bookIconnn.png",
              ),
              fit: BoxFit.cover,
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
