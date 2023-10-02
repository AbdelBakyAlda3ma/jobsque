import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class UnreadedMessagesBodyheader extends StatelessWidget {
  const UnreadedMessagesBodyheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      decoration: BoxDecoration(
        color: AppColors.neutral[100],
        border: Border.all(color: AppColors.neutral[200]!),
      ),
      child: Row(
        children: [
          Text(
            'Unread',
            style: CustomTextStyles.textMMedium
                .copyWith(color: AppColors.neutral[500]),
          ),
          const Spacer(),
          Text(
            'Read all messages',
            style: CustomTextStyles.textMMedium
                .copyWith(color: AppColors.primary[500]),
          )
        ],
      ),
    );
  }
}
