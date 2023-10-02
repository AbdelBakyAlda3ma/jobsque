import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';

class TypeOfWorkStepContentHeader extends StatelessWidget {
  const TypeOfWorkStepContentHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Type of work',
          style: CustomTextStyles.h4Medium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        const VerticalSpace(space: 4),
        Text(
          'Fill in your bio data correctly',
          style: CustomTextStyles.textMRegular.copyWith(
            color: AppColors.neutral[500],
          ),
        ),
      ],
    );
  }
}
