import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';

class SetFilterBottomSheetAppBar extends StatelessWidget {
  const SetFilterBottomSheetAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(IconsJobeque.arrowleft)),
        Text(
          'Set Filter',
          style: CustomTextStyles.h4Medium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        Text(
          'Reset',
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.primary[500],
          ),
        ),
      ],
    );
  }
}
