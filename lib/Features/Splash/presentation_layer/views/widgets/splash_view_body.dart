import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

import '../../../../../constants.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Read free Books",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }
}
