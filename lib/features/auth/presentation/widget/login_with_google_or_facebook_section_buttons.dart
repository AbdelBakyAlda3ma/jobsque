import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/google_and_facebook_buttons.dart';

class LoginWithGoogelOrFacebookSectionButtons extends StatelessWidget {
  const LoginWithGoogelOrFacebookSectionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GoogleAndFacebookButtons(
      facebookOnTap: () {},
      gooleOnTap: () {},
    );
  }
}
