import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    Key? key,
  }) : super(key: key);

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
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            image: DecorationImage(
              image: AssetImage(AssetsData.test),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
