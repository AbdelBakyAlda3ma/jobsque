import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/custom_text_form_field.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

class ExperienceScreenBodyFormCompanyNameTextField extends StatelessWidget {
  const ExperienceScreenBodyFormCompanyNameTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
