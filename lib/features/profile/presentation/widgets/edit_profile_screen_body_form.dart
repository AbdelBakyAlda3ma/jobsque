import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

import 'edit_profile_screen_body_form_address_text_field.dart';
import 'edit_profile_screen_body_form_bio_text_field.dart';
import 'edit_profile_screen_body_form_name_text_field.dart';
import 'edit_profile_screen_body_form_phone_number_text_field.dart';

class EditProfileScreenBodyForm extends StatelessWidget {
  const EditProfileScreenBodyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        EditProfileScreenBodyFormNameTextField(),
        VerticalSpace(space: 16),
        EditProfileScreenBodyFormBioTextField(),
        VerticalSpace(space: 16),
        EditProfileScreenBodyFormAddressTextField(),
        VerticalSpace(space: 16),
        EditProfileScreenBodyFormPhoneNumberTextField(),
        VerticalSpace(space: 16),
      ],
    );
  }
}
