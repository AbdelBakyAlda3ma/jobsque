import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class JobImage extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  const JobImage({
    super.key,
    required this.imageUrl,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        height: height,
        width: width,
      ),
    );
  }
}
