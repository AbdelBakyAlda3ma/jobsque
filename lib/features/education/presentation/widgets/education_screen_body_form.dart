import 'package:flutter/material.dart';
import 'package:jobseque/features/education/presentation/widgets/education_screen_body_form_end_year_text_field.dart';
import 'package:jobseque/features/education/presentation/widgets/education_screen_body_form_save_button.dart';
import 'package:jobseque/features/education/presentation/widgets/education_screen_body_form_start_year_text_field.dart';
import 'package:jobseque/features/education/presentation/widgets/education_screen_body_form_title_text_field.dart';
import 'package:jobseque/features/education/presentation/widgets/education_screen_body_form_university_text_field.dart';
import '../../../../core/widgets/vertical_space.dart';

class EducationScreenBodyForm extends StatelessWidget {
  const EducationScreenBodyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        EducationScreenBodyFormUniversityTextField(),
        VerticalSpace(space: 16),
        EducationScreenBodyFormTitleTextField(),
        VerticalSpace(space: 16),
        EducationScreenBodyFormStartYearTextField(),
        VerticalSpace(space: 16),
        EducationScreenBodyFormEndYearTextField(),
        VerticalSpace(space: 32),
        EducationScreenBodyFormSaveButton(),
      ],
    );
  }
}
