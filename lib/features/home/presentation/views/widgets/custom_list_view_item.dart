import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.23,
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: Container(
          // height: MediaQuery.of(context).size.height * 0.25,
          // width: 111,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            image: const DecorationImage(
              image: AssetImage(AssetsData.test),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
