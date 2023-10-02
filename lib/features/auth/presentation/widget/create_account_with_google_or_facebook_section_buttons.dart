import 'package:flutter/material.dart';
import '../../../../core/widgets/google_and_facebook_buttons.dart';

class CreateAccountWithGoogleOrFacebookSectionButtons extends StatelessWidget {
  const CreateAccountWithGoogleOrFacebookSectionButtons({
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
