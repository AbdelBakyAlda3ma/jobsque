import 'package:flutter/material.dart';
import 'package:jobseque/features/experience/presentation/widgets/experience_screen_body_form_company_name_text_field.dart';
import 'package:jobseque/features/experience/presentation/widgets/experience_screen_body_form_job_position_text_field.dart';
import 'package:jobseque/features/experience/presentation/widgets/experience_screen_body_form_save_button.dart';
import 'package:jobseque/features/experience/presentation/widgets/experience_screen_body_form_start_year_text_field.dart';
import '../../../../core/widgets/vertical_space.dart';
import 'experience_screen_body_form_currently_work_in_this_role_check_box.dart';
import 'experience_screen_body_form_location_text_field.dart';
import 'experience_screen_body_form_type_of_work_drop_down_menu.dart';

class ExperienceScreenBodyForm extends StatefulWidget {
  const ExperienceScreenBodyForm({super.key});

  @override
  State<ExperienceScreenBodyForm> createState() =>
      _ExperienceScreenBodyFormState();
}

class _ExperienceScreenBodyFormState extends State<ExperienceScreenBodyForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const ExperienceScreenBodyFormJobPositionTextField(),
          const VerticalSpace(space: 16),
          const ExperienceScreenBodyFormTypeOfWorkDropDownMenu(),
          const VerticalSpace(space: 16),
          const ExperienceScreenBodyFormCompanyNameTextField(),
          const VerticalSpace(space: 16),
          const ExperienceScreenBodyFormLocationTextField(),
          const VerticalSpace(space: 6),
          const ExperienceScreenBodyFormCurrentlyWorkInThisRoleCheckBox(),
          const VerticalSpace(space: 16),
          const ExperienceScreenBodyFormStartYearTextField(),
          const VerticalSpace(space: 32),
          ExperienceScreenBodyFormSaveButton(
            formKey: _formKey,
          ),
        ],
      ),
    );
  }
}
