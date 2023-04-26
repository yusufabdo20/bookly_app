import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  // const CustomButton({super.key});
  final Color? backgroundColor;
  final Color? textColor;
  final BorderRadius? borderRadius;
  final String text;
  const CustomButton({
    super.key,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.borderRadius,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: textColor ?? Colors.black,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
