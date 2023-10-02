import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';

class CompleteProfilePercentIdicatorFooter extends StatelessWidget {
  const CompleteProfilePercentIdicatorFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "2/4 Completed",
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.primary[500],
          ),
        ),
        const VerticalSpace(space: 8),
        Text(
          "Complete your profile before applying for a job",
          style: CustomTextStyles.textLRegular.copyWith(
            color: AppColors.neutral[500],
          ),
        ),
      ],
    );
  }
}
