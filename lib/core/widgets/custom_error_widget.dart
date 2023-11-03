import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  CustomErrorWidget({
    super.key,
    required this.errMsg,
  });
  final String errMsg;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMsg,
      style: TextStyle(
        fontSize: 20,
        color: Colors.red,
      ),
    );
  }
}
