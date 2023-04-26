
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'book_rating.dart';

class BestSellerListViewItemInformation extends StatelessWidget {
  const BestSellerListViewItemInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Harry Potter and Goblet of Fire",
            style: TextStyle(
              fontSize: 25,
            ),
            textAlign: TextAlign.start,
            maxLines: 2,
            // overflow: TextOverflow.ellipsis,
          ),
          const Text(
            "Yusuf Abdul fattah",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            textAlign: TextAlign.start,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "19.99 \$",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              BookRating(),
            ],
          )
        ],
      ),
    );
  }
}

