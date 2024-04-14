import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.TextColor,
    required this.borderRadius,
    required this.text,
    required this.fontSize,
  });

  final Color backgroundColor;
  final Color TextColor;
  final BorderRadius borderRadius;
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: styles.textStyle18.copyWith(
                fontWeight: FontWeight.w800,
                color: TextColor,
                fontSize: fontSize),
          ),
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
          )),
    );
  }
}
