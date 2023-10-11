import 'package:flutter/material.dart';
import 'package:jobseque/features/experience/presentation/widgets/experience_screen_body_form_company_name_text_field.dart';
import 'package:jobseque/features/experience/presentation/widgets/experience_screen_body_form_job_position_text_field.dart';
import 'package:jobseque/features/experience/presentation/widgets/experience_screen_body_form_save_button.dart';
import 'package:jobseque/features/experience/presentation/widgets/experience_screen_body_form_start_year_text_field.dart';
import '../../../../core/widgets/vertical_space.dart';
import 'experience_screen_body_form_currently_work_in_this_role_check_box.dart';
import 'experience_screen_body_form_location_text_field.dart';
import 'experience_screen_body_form_type_of_work_drop_down_menu.dart';

class ExperienceScreenBodyForm extends StatelessWidget {
  const ExperienceScreenBodyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ExperienceScreenBodyFormJobPositionTextField(),
        VerticalSpace(space: 16),
        ExperienceScreenBodyFormTypeOfWorkDropDownMenu(),
        VerticalSpace(space: 16),
        ExperienceScreenBodyFormCompanyNameTextField(),
        VerticalSpace(space: 16),
        ExperienceScreenBodyFormLocationTextField(),
        VerticalSpace(space: 6),
        ExperienceScreenBodyFormCurrentlyWorkInThisRoleCheckBox(),
        VerticalSpace(space: 16),
        ExperienceScreenBodyFormStartYearTextField(),
        VerticalSpace(space: 32),
        ExperienceScreenBodyFormSaveButton(),
      ],
    );
  }
}
