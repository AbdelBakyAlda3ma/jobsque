import 'package:flutter/material.dart';

class LanguageItemFlagImage extends StatelessWidget {
  const LanguageItemFlagImage({
    super.key,
    required this.flagImage,
    required this.package,
  });

  final String flagImage;
  final String? package;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            flagImage,
            package: package,
          ),
        ),
      ),
    );
  }
}
