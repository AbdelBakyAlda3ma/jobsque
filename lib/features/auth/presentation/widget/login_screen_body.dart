import 'package:flutter/material.dart';

import '../../../../core/widgets/vertical_space.dart';
import 'login_screen_body_form.dart';
import 'login_screen_body_header.dart';
import 'login_with_googel_or_facebook_section.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VerticalSpace(space: 24),
                LoginScreenBodyHeader(),
                VerticalSpace(space: 44),
                LoginScreenBodyForm(),
                VerticalSpace(space: 20),
                LoginWithGoogleOrFaceBookSection(),
                VerticalSpace(space: 9),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
