import 'package:flutter/material.dart';
import 'package:jobseque/features/auth/presentation/widget/create_account_with_google_or_facebook_section.dart';

import '../../../../core/widgets/vertical_space.dart';
import 'create_account_screen_body_form.dart';
import 'create_account_screen_body_header.dart';

class CreateAccountScreenBody extends StatelessWidget {
  const CreateAccountScreenBody({
    super.key,
  });

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
                CreateAccountScreenBodyHeader(),
                VerticalSpace(space: 44),
                CreateAccountScreenBodyForm(),
                VerticalSpace(space: 20),
                CreateAccountWithGoogleOrFaceBookSection(),
                VerticalSpace(space: 9)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
