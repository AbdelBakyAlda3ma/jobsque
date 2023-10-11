import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/text_form_field_of_date.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

class EducationScreenBodyFormStartYearTextField extends StatelessWidget {
  const EducationScreenBodyFormStartYearTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
