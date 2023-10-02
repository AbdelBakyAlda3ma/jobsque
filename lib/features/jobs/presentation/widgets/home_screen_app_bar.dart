import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'home_screen_app_bar_notification_button.dart';

class HomeScreenAppBar extends StatelessWidget {
  final String userName;
  const HomeScreenAppBar({
    super.key,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        right: 24,
        left: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, $userName👋',
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.h3Medium.copyWith(
                    color: AppColors.neutral[900],
                  ),
                ),
                Text(
                  'Create a better future for yourself here',
                  style: CustomTextStyles.textMMedium.copyWith(
                    color: AppColors.neutral[500],
                  ),
                ),
              ],
            ),
          ),
          const HomeScreenAppBarNotificationButton(),
        ],
      ),
    );
  }
}
