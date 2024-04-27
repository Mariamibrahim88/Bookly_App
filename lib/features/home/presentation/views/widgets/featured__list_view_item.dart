import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FeatureListViewItem extends StatelessWidget {
  const FeatureListViewItem({super.key, required this.imageurl});

  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: CachedNetworkImage(
            imageUrl: imageurl,
            placeholder: (context, url) => const Center(
              child: Center(child: CircularProgressIndicator()),
            ),
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => const Icon(Icons.error),
          )),
    );
  }
}
