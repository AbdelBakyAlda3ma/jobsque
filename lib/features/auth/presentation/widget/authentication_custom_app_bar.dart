import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/assets_logos.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';

class AuthenticationCustomAppBar extends StatelessWidget {
  const AuthenticationCustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          IconsJobeque.arrowleft,
          color: AppColors.neutral[900],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SvgPicture.asset(AssetsLogos.jobsequLogo),
        ),
      ],
    );
  }
}
