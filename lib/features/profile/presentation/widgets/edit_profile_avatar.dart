import 'package:flutter/material.dart';

import '../../../../core/utils/global/assets_images.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';

class EditProfileAvatar extends StatelessWidget {
  const EditProfileAvatar({
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
