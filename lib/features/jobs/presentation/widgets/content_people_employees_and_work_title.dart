import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';

class ContentPeopleEmployeesAndWorkTitle extends StatelessWidget {
  const ContentPeopleEmployeesAndWorkTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '6 Employees For',
          style: CustomTextStyles.textMMedium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        const VerticalSpace(space: 4),
        Text(
          'UI/UX Design',
          style: CustomTextStyles.textSRegular.copyWith(
            color: AppColors.neutral[500],
            letterSpacing: 0.01,
          ),
        ),
      ],
    );
  }
}
