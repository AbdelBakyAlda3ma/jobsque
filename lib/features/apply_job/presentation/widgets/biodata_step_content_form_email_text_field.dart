import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/text_form_field_of_email.dart';
import '../../../../core/widgets/vertical_space.dart';
import 'biodata_step_content_form_email_text_field_lable.dart';

class BiodataStepContentFormEmailTextField extends StatelessWidget {
  const BiodataStepContentFormEmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BiodataStepContentFormEmailTextFieldLabel(),
        VerticalSpace(space: 8),
        TextFormFieldOfEmail(),
      ],
    );
  }
}
