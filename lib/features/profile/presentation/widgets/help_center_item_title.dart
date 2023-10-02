import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';

class HelpCenterItemTitle extends StatelessWidget {
  final bool showContent;
  const HelpCenterItemTitle({
    super.key,
    required this.showContent,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Lorem ipsum dolor sit amet',
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        const Spacer(),
        Icon(
          showContent
              ? IconsJobeque.arrowupoutline
              : IconsJobeque.arrowdownoutline,
          size: 20,
          color: AppColors.neutral[400],
        )
      ],
    );
  }
}
