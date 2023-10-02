import 'package:flutter/material.dart';
import 'package:jobseque/features/auth/presentation/widget/login_with_google_or_facebook_section_label.dart';
import '../../../../core/widgets/vertical_space.dart';
import 'login_with_google_or_facebook_section_buttons.dart';

class LoginWithGoogleOrFaceBookSection extends StatelessWidget {
  const LoginWithGoogleOrFaceBookSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 0,
      child: Column(
        children: [
          LoginWithGoogleOrFacebooksectionLable(),
          VerticalSpace(space: 24),
          LoginWithGoogelOrFacebookSectionButtons(),
        ],
      ),
    );
  }
}
