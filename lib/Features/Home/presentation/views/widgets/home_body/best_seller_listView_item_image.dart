import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';

class BookListViewItemImage extends StatelessWidget {
  BookListViewItemImage({Key? key, required this.image}) : super(key: key);
  String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(right: 20),
      child: AspectRatio(
        aspectRatio: .8,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: CachedNetworkImage(
            placeholder: (context, url) => Center(
                child:
                    Image.asset("assets/images/Animation - 1699310838447.gif")),
            errorWidget: (context, url, error) {
              return const Icon(Icons.error);
            },
            fit: BoxFit.fill,
            imageUrl: image,
          ),
        ),
      ),
    );
  }
}
