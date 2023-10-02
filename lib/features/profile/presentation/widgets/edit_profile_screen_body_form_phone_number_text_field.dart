import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/custom_phoen_text_field.dart';
import '../../../../core/widgets/vertical_space.dart';

class EditProfileScreenBodyFormPhoneNumberTextField extends StatelessWidget {
  const EditProfileScreenBodyFormPhoneNumberTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'No.Handphone',
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.neutral[400],
          ),
        ),
        const VerticalSpace(space: 6),
        const CustomPhoneTextField(),
      ],
    );
  }
}
