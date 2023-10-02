import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/biodata_step_content_form_handphone_text_field.dart';

import 'biodata_step_content_form_email_text_field.dart';
import 'biodata_step_content_form_full_name_text_field.dart';

class BiodataStepContentForm extends StatefulWidget {
  const BiodataStepContentForm({super.key});

  @override
  State<BiodataStepContentForm> createState() => _BiodataStepContentFormState();
}

class _BiodataStepContentFormState extends State<BiodataStepContentForm> {
  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Column(
        children: [
          BiodataStepContentFormFullNameTextField(),
          VerticalSpace(space: 20),
          BiodataStepContentFormEmailTextField(),
          VerticalSpace(space: 20),
          BiodataStepContentFormHandphoneTextField(),
        ],
      ),
    );
  }
}
