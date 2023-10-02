import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';

class WorkTypeBodyHeader extends StatelessWidget {
  const WorkTypeBodyHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'What type of work are you interested in?',
          style:
              CustomTextStyles.h3Medium.copyWith(color: AppColors.neutral[900]),
        ),
        const VerticalSpace(space: 12),
        Text(
          "Tell us what you’re interested in so we can customise the app for your needs.",
          style: CustomTextStyles.textLRegular
              .copyWith(color: AppColors.neutral[500]),
        ),
      ],
    );
  }
}
