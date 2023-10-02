import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';

class ProfileInfoContacted extends StatelessWidget {
  const ProfileInfoContacted({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Contacted',
          style: CustomTextStyles.textMMedium.copyWith(
            color: AppColors.neutral[500],
          ),
        ),
        const VerticalSpace(space: 8),
        Text(
          '16',
          style: CustomTextStyles.h4Medium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
      ],
    );
  }
}
