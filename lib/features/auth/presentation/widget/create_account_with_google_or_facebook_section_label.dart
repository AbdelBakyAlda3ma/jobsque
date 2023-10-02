import 'package:flutter/material.dart';
import '../../../../core/widgets/centered_text_within_divider.dart';

class CreateAccountWithGoogleOrFacebookSectionLabel extends StatelessWidget {
  const CreateAccountWithGoogleOrFacebookSectionLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CenteredTextWithinDivider(
      text: 'Or Sign up With Account',
    );
  }
}
