import 'package:flutter/material.dart';

import '../../../../core/strings/dummy_string_data.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';

class HelpCenterItemContent extends StatelessWidget {
  const HelpCenterItemContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(space: 16),
        Text(
          kHelpCenterText,
          style: CustomTextStyles.textMRegular.copyWith(
            color: AppColors.neutral[500],
          ),
        ),
      ],
    );
  }
}
