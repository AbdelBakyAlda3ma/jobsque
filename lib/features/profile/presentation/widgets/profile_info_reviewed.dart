import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';

class ProfileInfoReviewed extends StatelessWidget {
  const ProfileInfoReviewed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Reviewed',
          style: CustomTextStyles.textMMedium.copyWith(
            color: AppColors.neutral[500],
          ),
        ),
        const VerticalSpace(space: 8),
        Text(
          '23',
          style: CustomTextStyles.h4Medium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
      ],
    );
  }
}
