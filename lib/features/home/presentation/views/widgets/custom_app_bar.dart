import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 40),
      child: Row(
        children: [
          SvgPicture.asset(
            AssetsData.logo,
            height: 16,
          ),
          const Spacer(),
          const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 20,
          ),
        ],
      ),
    );
  }
}
