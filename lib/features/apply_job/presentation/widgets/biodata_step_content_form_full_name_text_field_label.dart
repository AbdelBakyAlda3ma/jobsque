import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class BiodataStepContentFormFullNameTextFieldLabel extends StatelessWidget {
  const BiodataStepContentFormFullNameTextFieldLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Full Name",
          style: CustomTextStyles.textLRegular.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        Text(
          '*',
          style: CustomTextStyles.textLRegular.copyWith(
            color: AppColors.danger[500],
          ),
        ),
      ],
    );
  }
}
