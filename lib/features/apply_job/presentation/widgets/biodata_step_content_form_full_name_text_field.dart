import 'package:flutter/material.dart';

import '../../../../core/widgets/text_form_field_of_user_name_.dart';
import '../../../../core/widgets/vertical_space.dart';
import 'biodata_step_content_form_full_name_text_field_label.dart';

class BiodataStepContentFormFullNameTextField extends StatelessWidget {
  const BiodataStepContentFormFullNameTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BiodataStepContentFormFullNameTextFieldLabel(),
        VerticalSpace(space: 8),
        TextFormFieldOfUserName(),
      ],
    );
  }
}
