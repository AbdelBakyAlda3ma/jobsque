import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/account_custom_button.dart';

import '../utils/global/app_logos.dart';
import 'horizontal_space.dart';

class GoogleAndFacebookButtons extends StatelessWidget {
  final void Function() gooleOnTap;
  final void Function() facebookOnTap;
  const GoogleAndFacebookButtons({
    super.key,
    required this.gooleOnTap,
    required this.facebookOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AccountCustomButton(
          logo: AppLogos.googelLogo,
          text: 'Google',
          onTap: gooleOnTap,
        ),
        const HorizontalSpace(space: 19),
        AccountCustomButton(
          logo: AppLogos.facebookLogo,
          text: 'Facebook',
          onTap: facebookOnTap,
        ),
      ],
    );
  }
}
