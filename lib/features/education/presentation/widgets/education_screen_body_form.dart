import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/primary_button.dart';
import 'package:jobseque/core/widgets/text_form_field_of_date.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/vertical_space.dart';

class EducationScreenBodyForm extends StatelessWidget {
  const EducationScreenBodyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'University *',
              style: CustomTextStyles.textLMedium.copyWith(
                color: AppColors.neutral[400],
              ),
            ),
            const VerticalSpace(space: 6),
            CustomTextFormField(
              focusNode: FocusNode(),
              hintText: 'Enter your university...',
              onChanged: (value) {},
            ),
          ],
        ),
        const VerticalSpace(space: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title',
              style: CustomTextStyles.textLMedium.copyWith(
                color: AppColors.neutral[400],
              ),
            ),
            const VerticalSpace(space: 6),
            CustomTextFormField(
              focusNode: FocusNode(),
              hintText: 'Enter your title...',
              onChanged: (value) {},
            ),
          ],
        ),
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
              hintText: 'Enter your start year...',
            ),
          ],
        ),
        const VerticalSpace(space: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'End Year',
              style: CustomTextStyles.textLMedium.copyWith(
                color: AppColors.neutral[400],
              ),
            ),
            const VerticalSpace(space: 6),
            const TextFormFieldOfDate(
              hintText: 'Enter your End year...',
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
