import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class UploadPortfolioStepContentUploadedCVTitle extends StatelessWidget {
  const UploadPortfolioStepContentUploadedCVTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Upload CV",
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        Text(
          '*',
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.danger[500],
          ),
        ),
      ],
    );
  }
}
