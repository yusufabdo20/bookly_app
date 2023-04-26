import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customAppBarBookDetails.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const [
          CustomAppBarBookDetails(),
        ],
      ),
    );
  }
}
