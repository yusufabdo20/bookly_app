import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      width: 150,
      child: AspectRatio(
        aspectRatio: .50,
        child: Container(
          // width: 100,
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
