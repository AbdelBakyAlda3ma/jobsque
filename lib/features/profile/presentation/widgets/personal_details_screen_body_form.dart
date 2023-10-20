import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/profile/presentation/widgets/personal_details_screen_body_form_save_button.dart';
import 'personal_details_screen_body_form_address_text_field.dart';
import 'personal_details_screen_body_form_bio_text_field.dart';
import 'personal_details_screen_body_form_name_text_field.dart';
import 'personal_details_screen_body_form_phone_number_text_field.dart';

class PersonalDetailsScreenBodyForm extends StatefulWidget {
  const PersonalDetailsScreenBodyForm({super.key});

  @override
  State<PersonalDetailsScreenBodyForm> createState() =>
      _PersonalDetailsScreenBodyFormState();
}

class _PersonalDetailsScreenBodyFormState
    extends State<PersonalDetailsScreenBodyForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            const PersonalDetailsScreenBodyFormNameTextField(),
            const VerticalSpace(space: 16),
            const PersonalDetailsScreenBodyFormBioTextField(),
            const VerticalSpace(space: 16),
            const PersonalDetailsScreenBodyFormAddressTextField(),
            const VerticalSpace(space: 16),
            const PersonalDetailsScreenBodyFormPhoneNumberTextField(),
            const Spacer(),
            const VerticalSpace(space: 16),
            PersonalDetailsScreenBodyFormSaveButton(
              formKey: _formKey,
            ),
          ],
        ),
      ),
    );
  }
}
