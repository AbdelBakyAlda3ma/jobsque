import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/text_form_field_of_password_.dart';
import '../../../../core/widgets/vertical_space.dart';

class TwoStepVerificationAddPhoneNumberPasswordTextField
    extends StatelessWidget {
  const TwoStepVerificationAddPhoneNumberPasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Enter your password",
          style: CustomTextStyles.textLRegular.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        const VerticalSpace(space: 8),
        const TextFormFieldOfPassword(
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
      ],
    );
  }
}
