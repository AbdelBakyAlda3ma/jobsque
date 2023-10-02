import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';

import '../../../../core/utils/global/app_colors.dart';

class SavedjobCardPostDate extends StatelessWidget {
  const SavedjobCardPostDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 500),
      width: double.maxFinite,
      child: Row(
        children: [
          Text(
            'Posted 2 days ago',
            style: CustomTextStyles.textSRegular.copyWith(
              color: AppColors.neutral[700],
            ),
          ),
          const Spacer(),
          Icon(
            IconsJobeque.clock,
            size: 12,
            color: AppColors.success[700],
          ),
          const HorizontalSpace(space: 6),
          Text(
            'Be an early applicant',
            style: CustomTextStyles.textSRegular.copyWith(
              color: AppColors.neutral[700],
            ),
          ),
        ],
      ),
    );
  }
}
