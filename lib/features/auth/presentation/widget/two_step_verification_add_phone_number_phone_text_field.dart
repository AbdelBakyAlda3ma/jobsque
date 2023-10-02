import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/custom_phoen_text_field.dart';
import '../../../../core/widgets/vertical_space.dart';

class TwoStepVerificationAddPhoneNumberPhoneTextField extends StatelessWidget {
  const TwoStepVerificationAddPhoneNumberPhoneTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Add phone number",
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        const VerticalSpace(space: 4),
        Text(
          "We will send a verification code to this number",
          style: CustomTextStyles.textMRegular.copyWith(
            color: AppColors.neutral[500],
          ),
        ),
        const VerticalSpace(space: 16),
        const CustomPhoneTextField(),
      ],
    );
  }
}
