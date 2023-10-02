import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/horizontal_space.dart';

class NotificationItemTime extends StatelessWidget {
  final String receivedTime;
  final bool isReaded;
  const NotificationItemTime({
    super.key,
    required this.receivedTime,
    required this.isReaded,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      top: 0,
      child: Row(
        children: [
          // dot of notification
          isReaded
              ? const SizedBox()
              : CircleAvatar(
                  radius: 4,
                  backgroundColor: AppColors.warning[600],
                ),
          const HorizontalSpace(space: 8),
          // time of notification
          Text(
            receivedTime,
            style: CustomTextStyles.textSRegular.copyWith(
              color: AppColors.neutral[500],
            ),
          )
        ],
      ),
    );
  }
}
