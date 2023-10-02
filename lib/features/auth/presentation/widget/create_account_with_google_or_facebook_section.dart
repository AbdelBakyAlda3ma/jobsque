import 'package:flutter/material.dart';
import 'package:jobseque/features/auth/presentation/widget/create_account_with_google_or_facebook_section_label.dart';
import 'package:jobseque/features/auth/presentation/widget/create_account_with_google_or_facebook_section_buttons.dart';
import '../../../../core/widgets/vertical_space.dart';

class CreateAccountWithGoogleOrFaceBookSection extends StatelessWidget {
  const CreateAccountWithGoogleOrFaceBookSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 0,
      child: Column(
        children: [
          CreateAccountWithGoogleOrFacebookSectionLabel(),
          VerticalSpace(space: 24),
          CreateAccountWithGoogleOrFacebookSectionButtons(),
        ],
      ),
    );
  }
}
