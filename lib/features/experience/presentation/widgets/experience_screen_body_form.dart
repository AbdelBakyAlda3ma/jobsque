import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/primary_button.dart';
import 'package:jobseque/core/widgets/text_form_field_of_date.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/vertical_space.dart';
import 'experience_screen_body_form_currently_work_in_this_role_check_box.dart';
import 'experience_screen_body_form_location_text_field.dart';
import 'experience_type_of_work_drop_down_menu.dart';

class ExperienceScreenBodyForm extends StatelessWidget {
  const ExperienceScreenBodyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Position *',
              style: CustomTextStyles.textLMedium.copyWith(
                color: AppColors.neutral[400],
              ),
            ),
            const VerticalSpace(space: 6),
            CustomTextFormField(
              focusNode: FocusNode(),
              hintText: 'Enter your Position...',
              onChanged: (value) {},
            ),
          ],
        ),
        const VerticalSpace(space: 16),
        const ExperienceTypeOfWorkDropDownMenu(),
        const VerticalSpace(space: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Company name *',
              style: CustomTextStyles.textLMedium.copyWith(
                color: AppColors.neutral[400],
              ),
            ),
            const VerticalSpace(space: 6),
            CustomTextFormField(
              focusNode: FocusNode(),
              hintText: 'Enter your Company name...',
              onChanged: (value) {},
            ),
          ],
        ),
        const VerticalSpace(space: 16),
        const ExperienceScreenBodyFormLocationTextField(),
        const VerticalSpace(space: 6),
        const ExperienceScreenBodyFormCurrentlyWorkInThisRoleCheckBox(),
        const VerticalSpace(space: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Start Year',
              style: CustomTextStyles.textLMedium.copyWith(
                color: AppColors.neutral[400],
              ),
            ),
            const VerticalSpace(space: 6),
            const TextFormFieldOfDate(
              hintText: 'Enter your Start year...',
            ),
          ],
        ),
        const VerticalSpace(space: 32),
        SizedBox(
          width: double.maxFinite,
          child: PrimaryButton.large(
            onPressed: () {},
            text: 'Save',
          ),
        ),
      ],
    );
  }
}
