import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    required this.errMsg,
  });
  final String errMsg;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMsg,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.red,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
