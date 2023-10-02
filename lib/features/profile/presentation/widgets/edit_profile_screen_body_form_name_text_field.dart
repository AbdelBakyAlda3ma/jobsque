import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/text_form_field_of_user_name_.dart';
import '../../../../core/widgets/vertical_space.dart';

class EditProfileScreenBodyFormNameTextField extends StatelessWidget {
  const EditProfileScreenBodyFormNameTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Name',
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.neutral[400],
          ),
        ),
        const VerticalSpace(space: 6),
        const TextFormFieldOfUserName(),
      ],
    );
  }
}
