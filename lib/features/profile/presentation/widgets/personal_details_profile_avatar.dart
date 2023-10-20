import 'dart:io';
import 'package:flutter/material.dart';
import '../../../../core/utils/global/assets_images.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';

class PersonalDetailsProfileAvatar extends StatelessWidget {
  const PersonalDetailsProfileAvatar({
    super.key,
    this.imagePath,
  });
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return imagePath != null
        ? ChoosenAvatar(imagePath: imagePath!)
        : const DefualtAvatar();
  }
}

class DefualtAvatar extends StatelessWidget {
  const DefualtAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 45,
      backgroundImage: AssetImage(AssetsImages.imageProfile1),
      child: CircleAvatar(
        radius: 45,
        backgroundColor: Colors.black.withOpacity(0.2),
        child: const Icon(
          IconsJobeque.camera,
          size: 32,
          color: Colors.white,
        ),
      ),
    );
  }
}

class ChoosenAvatar extends StatelessWidget {
  final String imagePath;

  const ChoosenAvatar({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 45,
      backgroundImage: FileImage(
        File(imagePath),
      ),
      child: CircleAvatar(
        radius: 45,
        backgroundColor: Colors.black.withOpacity(0.2),
        child: const Icon(
          IconsJobeque.camera,
          size: 32,
          color: Colors.white,
        ),
      ),
    );
  }
}
