import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'widgets/boo_details_body/book_details_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsBody(),
    );
  }
}