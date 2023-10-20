import 'package:flutter/material.dart';
import 'package:jobseque/features/education/presentation/widgets/education_screen_body_form_end_year_text_field.dart';
import 'package:jobseque/features/education/presentation/widgets/education_screen_body_form_save_button.dart';
import 'package:jobseque/features/education/presentation/widgets/education_screen_body_form_start_year_text_field.dart';
import 'package:jobseque/features/education/presentation/widgets/education_screen_body_form_title_text_field.dart';
import 'package:jobseque/features/education/presentation/widgets/education_screen_body_form_university_text_field.dart';
import '../../../../core/widgets/vertical_space.dart';

class EducationScreenBodyForm extends StatefulWidget {
  const EducationScreenBodyForm({super.key});

  @override
  State<EducationScreenBodyForm> createState() =>
      _EducationScreenBodyFormState();
}

class _EducationScreenBodyFormState extends State<EducationScreenBodyForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const EducationScreenBodyFormUniversityTextField(),
          const VerticalSpace(space: 16),
          const EducationScreenBodyFormTitleTextField(),
          const VerticalSpace(space: 16),
          const EducationScreenBodyFormStartYearTextField(),
          const VerticalSpace(space: 16),
          const EducationScreenBodyFormEndYearTextField(),
          const VerticalSpace(space: 32),
          EducationScreenBodyFormSaveButton(
            formKey: _formKey,
          ),
        ],
      ),
    );
  }
}
