import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_phoen_text_field.dart';

import '../../../../core/widgets/vertical_space.dart';
import 'biodata_step_content_form_handphone_text_field_label.dart';

class BiodataStepContentFormHandphoneTextField extends StatelessWidget {
  const BiodataStepContentFormHandphoneTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BiodataStepContentFormHandphoneTextFieldLabel(),
        VerticalSpace(space: 8),
        CustomPhoneTextField(),
      ],
    );
  }
}
