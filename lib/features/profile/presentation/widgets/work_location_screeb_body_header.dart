import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';

class WorkLocationScreenBodyHeader extends StatelessWidget {
  const WorkLocationScreenBodyHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Where are you prefefred Location?',
          style:
              CustomTextStyles.h3Medium.copyWith(color: AppColors.neutral[900]),
        ),
        const VerticalSpace(space: 12),
        Text(
          'Let us know, where is the work location you want at this time, so we can adjust it.',
          style: CustomTextStyles.textLRegular
              .copyWith(color: AppColors.neutral[500]),
        ),
      ],
    );
  }
}
