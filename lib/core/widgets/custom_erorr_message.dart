import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErorrMessage extends StatelessWidget {
  CustomErorrMessage({super.key, this.errorMessage});

  final errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: styles.textStyle18
            .copyWith(fontWeight: FontWeight.bold, color: Colors.red),
      ),
    );
  }
}
