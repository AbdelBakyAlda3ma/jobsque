import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class ProfileInfoApplied extends StatelessWidget {
  const ProfileInfoApplied({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Applied',
          style: CustomTextStyles.textMMedium.copyWith(
            color: AppColors.neutral[500],
          ),
        ),
        const VerticalSpace(space: 8),
        Text(
          '45',
          style: CustomTextStyles.h4Medium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
      ],
    );
  }
}
