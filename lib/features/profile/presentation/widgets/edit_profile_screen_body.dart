import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

import 'edit_profile_change_photo.dart';
import 'edit_profile_screen_body_form.dart';
import 'edit_profile_screen_body_save_button.dart';

class EditProfileScreenBody extends StatelessWidget {
  const EditProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                VerticalSpace(space: 18),
                EditProfileChangePhoto(),
                VerticalSpace(space: 25),
                EditProfileScreenBodyForm(),
                Spacer(),
                EditProfileScreenBodySaveButton(),
                VerticalSpace(space: 9),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
