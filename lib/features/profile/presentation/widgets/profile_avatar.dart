import 'package:flutter/material.dart';

import '../../../../core/utils/global/assets_images.dart';

class ProfileAvatar extends StatelessWidget {
  final double imageRadius = 45;
  final double heightOfColoredContainer = 110;

  const ProfileAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: heightOfColoredContainer - imageRadius,
      left: MediaQuery.sizeOf(context).width / 2 - imageRadius,
      child: CircleAvatar(
        radius: imageRadius,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 43,
          backgroundImage: AssetImage(
            AssetsImages.imageProfile1,
          ),
        ),
      ),
    );
  }
}
